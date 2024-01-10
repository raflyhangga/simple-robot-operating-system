#include "ros/ros.h"
#include "demo_package/Pesan.h"

int main(int argc, char**argv) {
    // Inisialisasi Node
    ros::init(argc,argv,"simple_publisher_node");

    // Inisialisasi Handler Node
    ros::NodeHandle nh;
    // Insialisasi Publisher dari Handler
    ros::Publisher data_publisher = nh.advertise<demo_package::Pesan>("topik_utama",1000);

    // Rate pengiriman pesan sebesar 1hz (1 pesan setiap detik)
    ros::Rate loop_rate(1);

    // ros::ok() menyatakan true jika file ini di run. false jika file file ini dimatikan atau roscore dimatikan
    while(ros::ok()) { 

        // Variabel dengan tipe msg yang ditentukan
        demo_package::Pesan dataVariabel;

        // Pemberian nama terhadap masing-masing data didalam variabel
        dataVariabel.pesan1 = 12;
        dataVariabel.pesan2 = 1.5;
        dataVariabel.pesan3 = "Ini data yang dikirim";

        // Mencetak hasil variabel kedalam console simple_publisher_node.cpp
        ROS_INFO("\npesan1: %ld\npesan2: %lf\npesan3: %s",dataVariabel.pesan1, dataVariabel.pesan2, dataVariabel.pesan3.c_str());

        // Mengirim variabel kedalam topik "topik_utama"
        data_publisher.publish(dataVariabel);

        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}