#include "ros/ros.h"
#include "demo_package/AddTwoInts.h"

int main(int argc, char ** argv){
    // Inisialisasi 
    ros::init(argc,argv,"client_server");
    
    // Inisialisasi Handler Node
    ros::NodeHandle nh;

    // Inisialisasi client dari handler
    ros::ServiceClient client = nh.serviceClient<demo_package::AddTwoInts>("add_two_ints");

    // Inisialisasi variabel sesuai tipe data srv
    demo_package::AddTwoInts dataVariabel;

    // Memberi nilai kepada seluruh data request
    dataVariabel.request.value1 = 12;
    dataVariabel.request.value1 = 24;

    if (client.call(dataVariabel)){
        ROS_INFO("Jumlah variabel yang dicari adalah: %ld",dataVariabel.response.sum);
    }
    else {
        ROS_INFO("Service gagal dipanggil");
    }

}