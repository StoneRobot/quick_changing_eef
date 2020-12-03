#pragma once
#include <ros/ros.h>
#include <moveit/move_group_interface/move_group.h>

#include <geometry_msgs/PoseStamped.h>

// #include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

#include "hirop_msgs/PubMesh.h"
#include "hirop_msgs/removeObject.h"
#include "hirop_msgs/Pose.h"
#include "hirop_msgs/setFromIK.h"

#include "tool_list_manager.h"

#include <string>
#include <vector>
// #include <thread>
#include <boost/thread/thread.hpp>
#include <boost/bind.hpp>
#include <atomic>

#include <Eigen/Eigen>
#include <Eigen/Core>
#include <Eigen/Geometry>

using namespace std;

class QuickChanging
{
public:
    QuickChanging(ros::NodeHandle* nh);
    ~QuickChanging();

    /**
     * @brief 加载指定的工具
     * @param tool [输入]工具名称
     * @return 成功返回0
    */
    int loadTool(string tool);

    /**
     * @brief 卸载指定的工具
     * @param tool [输入]指定工具的名称
     * @return 成功返回0
    */
    int unloadTool(string tool);

    /**
     * @brief 设置工具可视化的姿态
     * @param tool [输入]指定工具的名称
     * @param pose [输入]可视化的姿态
     * @param isSave [输入]是否对姿态进行保存
     * @return 成功返回0
    */
    int setToolPose(string tool, hirop_msgs::Pose pose , bool isSave);

    /**
     * @brief 设置工具的tf
     * @param tool [输入]指定工具的名称
     * @param tf [输入]发布工具的tf
     * @param isSave [输入]是否保存tf数据
    */
    int setToolTF(string tool, hirop_msgs::Pose& tf, bool isSave);

    /**
     * @brief 设定工具的坐标, 获取工具parent_link的坐标
     * @param inPose [输入]设定的工具的坐标
     * @param outPose [输出]获取的parent_link的坐标
    */
    int tool2Pose(geometry_msgs::PoseStamped& inPose, geometry_msgs::PoseStamped& outPose);

    /**
     * @brief 设定工具的坐标, 获取机器人的关节姿态
     * @param inPose [输入]设定工具的坐标
     * @param jointAngle [输出]获取机器人的关节姿态
    */
    int tool2JointPose(geometry_msgs::PoseStamped& inPose, vector<double>& jointAngle, bool isAngle=false);
private:
    moveit::planning_interface::MoveGroup* moveGroup_;
    ros::NodeHandle* nh_;
    string arm_;
    string end_link_;

    ros::ServiceClient loadMeshClient;
    ros::ServiceClient rmObjectClient;
    ros::ServiceClient IKClient;
    
    ToolListManager* toolList;

    bool fixedTF;
    string TFtoolName;
    hirop_msgs::Pose toolTF;
    boost::thread* tfThread;
private:
    int pubObject(string tool, hirop_msgs::Pose pose);
    void pubTF();
    int rmObject(string tool="");
    int saveTF(string tool, hirop_msgs::Pose& tf);
    int saveVisualPose(string tool, hirop_msgs::Pose& pose);
    Eigen::Matrix3d quat2Matrix(double x, double y, double z, double w);
};

