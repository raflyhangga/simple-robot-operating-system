#include "ros/ros.h"
#include "demo_package/AddTwoInts.h"

bool add(demo_package::AddTwoInts::Request &req,demo_package::AddTwoInts::Response &resp) {
    // Mengolah data request kedalam respon
    resp.valuesum = req.value1 + req.value2;

    // Mencetak hasil olahan data
    ROS_INFO("\nNilai value1: %ld",(long int)req.value1);
    ROS_INFO("\nNilai value2: %ld",(long int)req.value2);
    ROS_INFO("\nJumlah: %ld",(long int)resp.valuesum);
    return true;
}


int main(int argc, char**argv){
    // Inisialisasi Node
    ros::init(argc,argv,"service_server");

    // Inisialisasi Handler Node
    ros::NodeHandle nh;

    // Insialisasi Server dari Handler
    ros::ServiceServer server = nh.advertiseService("add_two_ints",add);
    ROS_INFO("Ready to add two integers.");
    ros::spin();

    return 0;
}