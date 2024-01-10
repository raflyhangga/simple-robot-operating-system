#include "ros/ros.h"
#include "demo_package/Pesan.h"

void callbackHandler(const demo_package::Pesan::ConstPtr &msg) {
    // Mencetak pesan yang diterima
    ROS_INFO("\nSaya mendengar: \n");
    ROS_INFO("pesan1: %ld\n",msg->pesan1);
    ROS_INFO("pesan2: %lf\n",msg->pesan2);
    ROS_INFO("pesan3: %s\n",msg->pesan3.c_str());
}

int main(int argc, char ** argv){
    // Inisialisasi Node
    ros::init(argc,argv,"simple_subscriber_node");

    // Inisialisasi Handler Node
    ros::NodeHandle nh;

    // Insialisasi Subscriber dari Handler
    ros::Subscriber data_subscriber = nh.subscribe("topik_utama",1000,callbackHandler);

    ros::spin();

    return 0;
}