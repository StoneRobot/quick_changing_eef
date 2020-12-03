#include "quick_changing_eef/quick_changing.h"
#include "hirop_msgs/setFromIK.h"

#ifdef HIROP_MSGS
    #define PACKAGE hirop_msgs
#else
    #include "quick_changing_eef/ObjectPose.h"
    #include "quick_changing_eef/String.h"
    #include "quick_changing_eef/tool2LinkPose.h"
    #include "quick_changing_eef/tool2JointPose.h"
    #define PACKAGE quick_changing_eef
#endif // DEBUG


class QuickChangingBridge
{
private:
    ros::NodeHandle* nh_;
    QuickChanging* qc;

private:
    ros::ServiceServer loadToolSer;
    ros::ServiceServer unloadToolSer;
    ros::ServiceServer setToolPoseSer;
    ros::ServiceServer setToolTFSer;
    ros::ServiceServer tool2PoseSer;
    ros::ServiceServer tool2JointPoseSer;

private:
    bool loadToolSerCB(PACKAGE::String::Request& req, PACKAGE::String::Response& rep);
    bool unloadToolSerCB(PACKAGE::String::Request& req, PACKAGE::String::Response& rep);
    bool setToolPoseSerCB(PACKAGE::ObjectPose::Request& req, PACKAGE::ObjectPose::Response& rep);
    bool setToolTFSerCB(PACKAGE::ObjectPose::Request& req, PACKAGE::ObjectPose::Response& rep);
    bool tool2PoseSerCB(PACKAGE::tool2LinkPose::Request& req, PACKAGE::tool2LinkPose::Response& rep);
    bool tool2JointPoseSerCB(PACKAGE::tool2JointPose::Request& req, PACKAGE::tool2JointPose::Response& rep);

public:
    QuickChangingBridge(ros::NodeHandle* n);
    ~QuickChangingBridge();
};
