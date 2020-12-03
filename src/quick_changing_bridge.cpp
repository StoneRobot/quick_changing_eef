#include "quick_changing_eef/quick_changing_bridge.h"

QuickChangingBridge::QuickChangingBridge(ros::NodeHandle *n)
{
    nh_ = n;

    qc = new QuickChanging(nh_);

    loadToolSer = nh_->advertiseService("load_tool", &QuickChangingBridge::loadToolSerCB, this);
    unloadToolSer = nh_->advertiseService("unload_tool", &QuickChangingBridge::unloadToolSerCB, this);
    setToolPoseSer = nh_->advertiseService("set_tool_pose", &QuickChangingBridge::setToolPoseSerCB, this);
    setToolTFSer = nh_->advertiseService("set_tool_tf", &QuickChangingBridge::setToolTFSerCB, this);
    tool2PoseSer = nh_->advertiseService("tool_2_pose", &QuickChangingBridge::tool2PoseSerCB, this);
    tool2JointPoseSer = nh_->advertiseService("tool_2_joint_pose", &QuickChangingBridge::tool2JointPoseSerCB, this);
}

QuickChangingBridge::~QuickChangingBridge()
{
    delete qc;
    qc = nullptr;
}

bool QuickChangingBridge::loadToolSerCB(PACKAGE::String::Request &req, PACKAGE::String::Response &rep)
{
    string toolName;
    toolName = req.str;
    rep.result = qc->loadTool(toolName);
    return true;
}

bool QuickChangingBridge::unloadToolSerCB(PACKAGE::String::Request &req, PACKAGE::String::Response &rep)
{
    rep.result = qc->unloadTool(req.str);
    return true;
}

bool QuickChangingBridge::setToolPoseSerCB(PACKAGE::ObjectPose::Request &req, PACKAGE::ObjectPose::Response &rep)
{
    rep.result = qc->setToolPose(req.obj, req.pose, true);
    return true;
}

bool QuickChangingBridge::setToolTFSerCB(PACKAGE::ObjectPose::Request &req, PACKAGE::ObjectPose::Response &rep)
{
    rep.result = qc->setToolTF(req.obj, req.pose, true);
    return true;
}

bool QuickChangingBridge::tool2PoseSerCB(PACKAGE::tool2LinkPose::Request &req, PACKAGE::tool2LinkPose::Response &rep)
{
    bzero(&rep, sizeof(rep));
    qc->tool2Pose(req.inPose, rep.outPose);
    return true;
}

bool QuickChangingBridge::tool2JointPoseSerCB(PACKAGE::tool2JointPose::Request &req, PACKAGE::tool2JointPose::Response &rep)
{
    bzero(&rep, sizeof(rep));
    qc->tool2JointPose(req.inPose, rep.joint, req.isAngle);
    return true;
}
