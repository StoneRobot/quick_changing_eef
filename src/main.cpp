#include "quick_changing_eef/quick_changing.h"
#include "quick_changing_eef/quick_changing_bridge.h"

int main(int argv, char **argc)
{
    ros::init(argv, argc, "quick_changing");
    ros::NodeHandle nh;

    QuickChangingBridge qcb(&nh);

    ros::spin();
    ros::waitForShutdown();
    return 0;
}