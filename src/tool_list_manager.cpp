#include "quick_changing_eef/tool_list_manager.h"

ToolListManager::ToolListManager()
{
    string pkgPath = ros::package::getPath("quick_changing_eef");
    loadPath = pkgPath + "/cfg/" + "toolList.yaml";
    loadToolList();
}

ToolListManager::~ToolListManager()
{
    saveToolList();
}

int ToolListManager::loadToolList()
{
    try
    {
        node = YAML::LoadFile(loadPath);
    }
    catch (const std::exception &e)
    {
        std::cout << "文件路径错误" << std::endl;
        return -1;
    }
    return 0;
}

int ToolListManager::saveToolList()
{
    if (node.IsNull())
    {
        cout << "node is NULL" << endl;
        return -1;
    }
    std::ofstream fout(loadPath, ios::out);
    fout << node;
    fout.close();
}

int ToolListManager::changeNode(string &tool, hirop_msgs::Pose &pose, hirop_msgs::Pose &tf)
{
    if (node.IsNull())
    {
        cout << "node is NULL" << endl;
        return -1;
    }
    node[tool]["visualPose"]["position"]["x"] = pose.position.x;
    node[tool]["visualPose"]["position"]["y"] = pose.position.y;
    node[tool]["visualPose"]["position"]["z"] = pose.position.z;
    node[tool]["visualPose"]["rpy"]["R"] = pose.rpy.R;
    node[tool]["visualPose"]["rpy"]["P"] = pose.rpy.P;
    node[tool]["visualPose"]["rpy"]["Y"] = pose.rpy.Y;
    node[tool]["tf"]["position"]["x"] = tf.position.x;
    node[tool]["tf"]["position"]["y"] = tf.position.y;
    node[tool]["tf"]["position"]["z"] = tf.position.z;
    node[tool]["tf"]["rpy"]["R"] = tf.rpy.R;
    node[tool]["tf"]["rpy"]["P"] = tf.rpy.P;
    node[tool]["tf"]["rpy"]["Y"] = tf.rpy.Y;
    return 0;
}

int ToolListManager::getTool(string &tool, hirop_msgs::Pose &visualPose, hirop_msgs::Pose &tf)
{
    if (node.IsNull())
    {
        cout << "node is NULL" << endl;
        return -1;
    }
    try
    {
        visualPose.position.x = node[tool]["visualPose"]["position"]["x"].as<double>();
        visualPose.position.y = node[tool]["visualPose"]["position"]["y"].as<double>();
        visualPose.position.z = node[tool]["visualPose"]["position"]["z"].as<double>();
        visualPose.rpy.R = node[tool]["visualPose"]["rpy"]["R"].as<double>();
        visualPose.rpy.P = node[tool]["visualPose"]["rpy"]["P"].as<double>();
        visualPose.rpy.Y = node[tool]["visualPose"]["rpy"]["Y"].as<double>();
        tf.position.x = node[tool]["tf"]["position"]["x"].as<double>();
        tf.position.y = node[tool]["tf"]["position"]["y"].as<double>();
        tf.position.z = node[tool]["tf"]["position"]["z"].as<double>();
        tf.rpy.R = node[tool]["tf"]["rpy"]["R"].as<double>();
        tf.rpy.P = node[tool]["tf"]["rpy"]["P"].as<double>();
        tf.rpy.Y = node[tool]["tf"]["rpy"]["Y"].as<double>();
        return 0;
    }
    catch (const std::exception &e)
    {
        std::cout << "检查toolList.yaml文件" << std::endl;
    }
    return -1;
}

int ToolListManager::appTool(string &tool, hirop_msgs::Pose &visualPose, hirop_msgs::Pose &tf)
{
    return changeNode(tool, visualPose, tf);
}

int ToolListManager::rmTool(string &tool)
{
    if (node.IsNull())
    {
        cout << "node is NULL" << endl;
        return -1;
    }
    if (node.remove(tool))
    {
        return 0;
    }
    return -1;
}