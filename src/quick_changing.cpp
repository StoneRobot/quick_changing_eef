#include "quick_changing_eef/quick_changing.h"

QuickChanging::QuickChanging(ros::NodeHandle *nh)
{
    nh_ = nh;
    nh->param("arm", arm_, string("arm"));
    nh->param("end_link", end_link_, string("link6"));

    moveGroup_ = new moveit::planning_interface::MoveGroup(arm_);
    toolList = new ToolListManager();

    loadMeshClient = nh_->serviceClient<hirop_msgs::PubMesh>("/loadMesh");
    rmObjectClient = nh_->serviceClient<hirop_msgs::removeObject>("/rmObject");
    IKClient = nh_->serviceClient<hirop_msgs::setFromIK>("/trajectory_planner/setFromIK");

    moveGroup_->detachObject();
}

QuickChanging::~QuickChanging()
{
    delete moveGroup_;
    delete toolList;
    moveGroup_ = nullptr;
    toolList = nullptr;
}

int QuickChanging::loadTool(string tool)
{
    hirop_msgs::Pose visualPose;
    hirop_msgs::Pose tf;
    if (toolList->getTool(tool, visualPose, tf) != 0)
    {
        cout << "获取工具失败" << endl;
        return -1;
    }

    if (pubObject(tool, visualPose) != 0)
    {
        cout << "发布工具失败" << endl;
        return -1;
    }

    moveGroup_->attachObject(tool, end_link_);

    fixedTF = false;
    TFtoolName = tool;
    toolTF = tf;
    fixedTF = true;

    boost::function0<void> f = boost::bind(&QuickChanging::pubTF, this);
    tfThread = new boost::thread(f);
    tfThread->detach();
    return 0;
}

int QuickChanging::unloadTool(string tool)
{
    fixedTF = false;
    moveGroup_->detachObject(tool);
    if (rmObject(tool) != 0)
    {
        cout << "移除工具失败" << endl;
        return -1;
    }
    return 0;
}

int QuickChanging::setToolPose(string tool, hirop_msgs::Pose pose, bool isSave)
{
    moveGroup_->detachObject(tool);
    pubObject(tool, pose);
    moveGroup_->attachObject(tool);
    if (isSave)
    {
        saveVisualPose(tool, pose);
    }
    return 0;
}

int QuickChanging::setToolTF(string tool, hirop_msgs::Pose &tf, bool isSave)
{
    fixedTF = false;
    sleep(1);
    toolTF = tf;
    fixedTF = true;
    boost::function0<void> f = boost::bind(&QuickChanging::pubTF, this);
    tfThread = new boost::thread(f);
    if (isSave)
    {
        saveTF(tool, toolTF);
    }
    return 0;
}

int QuickChanging::tool2Pose(geometry_msgs::PoseStamped &inPose, geometry_msgs::PoseStamped &outPose)
{
    Eigen::AngleAxisd R_vector(toolTF.rpy.R, Eigen::Vector3d::UnitX());
    Eigen::AngleAxisd P_Vector(toolTF.rpy.P, Eigen::Vector3d::UnitY());
    Eigen::AngleAxisd Y_Vector(toolTF.rpy.Y, Eigen::Vector3d::UnitZ());
    Eigen::Matrix3d rotation = R_vector.matrix() * P_Vector.matrix() * Y_Vector.matrix();
    Eigen::Translation3d translation(toolTF.position.x, toolTF.position.y, toolTF.position.z);
    Eigen::Matrix4d m4d = (translation * rotation).matrix();
    Eigen::Matrix4d m4dInv = m4d.inverse();

    Eigen::Quaterniond inQuat(inPose.pose.orientation.x, inPose.pose.orientation.y,
                              inPose.pose.orientation.z, inPose.pose.orientation.w);
    Eigen::Translation3d inPoesTranslation(inPose.pose.position.x, inPose.pose.position.y, inPose.pose.position.z);
    Eigen::Affine3d inPoseMatr = inPoesTranslation * inQuat.matrix();

    Eigen::Matrix4d linkMat = inPoseMatr * m4dInv;
    Eigen::Affine3d linkMat_(linkMat);
    Eigen::Matrix3d linkRotation(linkMat_.rotation());

    Eigen::Quaterniond quat(linkRotation);
    quat.normalize();

    outPose = inPose;
    outPose.pose.position.x = linkMat(0, 3);
    outPose.pose.position.y = linkMat(1, 3);
    outPose.pose.position.z = linkMat(2, 3);
    outPose.pose.orientation.x = quat.x();
    outPose.pose.orientation.y = quat.y();
    outPose.pose.orientation.z = quat.z();
    outPose.pose.orientation.w = quat.w();
    return 0;
}

int QuickChanging::tool2JointPose(geometry_msgs::PoseStamped &inPose, vector<double> &jointAngle, bool isAngle)
{
    geometry_msgs::PoseStamped outPose;
    tool2Pose(inPose, outPose);
    hirop_msgs::setFromIK srv;
    srv.request.eef = end_link_;
    srv.request.Pose = outPose;
    srv.request.isAngle = isAngle;
    if (IKClient.call(srv))
    {
        if (!srv.response.joints.empty())
        {
            jointAngle = srv.response.joints;
            cout << "结果: ";
            for (auto i : jointAngle)
            {
                cout << i << " ";
            }
            cout << endl;
            return 0;
        }
    }
    return -1;
}

int QuickChanging::pubObject(string tool, hirop_msgs::Pose pose)
{
    hirop_msgs::PubMesh srv;
    srv.request.header.frame_id = end_link_;
    srv.request.file_name = tool;
    srv.request.object_id = tool;
    srv.request.pose = pose;
    srv.request.rgba.a = 1;
    srv.request.rgba.r = 255;
    srv.request.rgba.g = 255;
    srv.request.rgba.b = 255;
    if (loadMeshClient.call(srv))
    {
        if (srv.response.result)
        {
            return 0;
        }
    }
    return -1;
}

int QuickChanging::rmObject(string tool)
{
    hirop_msgs::removeObject srv;
    srv.request.id = tool;
    if (rmObjectClient.call(srv))
    {
        if (srv.response.result)
        {
            return 0;
        }
    }
    return -1;
}

void QuickChanging::pubTF()
{
    tf::TransformBroadcaster br;
    tf::Transform transform;
    double x, y, z;
    x = toolTF.position.x;
    y = toolTF.position.y;
    z = toolTF.position.z;
    transform.setOrigin(tf::Vector3(x, y, z));
    tf::Quaternion quat;
    quat.setRPY(toolTF.rpy.R, toolTF.rpy.P, toolTF.rpy.Y);
    transform.setRotation(quat);
    ROS_INFO_STREAM("position: " << toolTF.position);
    ros::Rate rate(30);
    while (ros::ok() && fixedTF)
    {
        br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), end_link_, TFtoolName));
        rate.sleep();
    }
    // cout << "退出线程--------------------------" << endl;
}

int QuickChanging::saveTF(string tool, hirop_msgs::Pose &tf)
{
    hirop_msgs::Pose tf_1;
    hirop_msgs::Pose vPose;
    if (toolList->getTool(tool, vPose, tf_1) == 0)
    {
        toolList->changeNode(tool, vPose, tf);
        return 0;
    }
    return -1;
}

int QuickChanging::saveVisualPose(string tool, hirop_msgs::Pose &pose)
{
    hirop_msgs::Pose tf_1;
    hirop_msgs::Pose vPose;
    if (toolList->getTool(tool, vPose, tf_1) == 0)
    {
        toolList->changeNode(tool, pose, tf_1);
        return 0;
    }
    return -1;
}
