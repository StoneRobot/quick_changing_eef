#pragma once

#include <ros/package.h>
#include <string>
#include <yaml-cpp/yaml.h>
#include <iostream>
#include <ostream>
#include <fstream>


#include "hirop_msgs/Pose.h"

using namespace std;



class ToolListManager
{
private:
    YAML::Node node;
    string loadPath;
public:
    ToolListManager();
    ~ToolListManager();

    int loadToolList();
    int saveToolList();
    int getTool(string& tool, hirop_msgs::Pose& visualPose, hirop_msgs::Pose& tf);
    int appTool(string& tool, hirop_msgs::Pose& visualPose, hirop_msgs::Pose& tf);
    int rmTool(string& tool);
    int changeNode(string& tool, hirop_msgs::Pose& pose, hirop_msgs::Pose& tf);
};




