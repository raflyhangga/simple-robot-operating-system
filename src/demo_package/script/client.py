#!/usr/bin/env python3

import rospy
from demo_package.srv import AddTwoInts, AddTwoIntsResponse

def add_two_ints_client(x,y):
    # Inisialisasi Node
    rospy.init_node("client")

    rospy.wait_for_service("add_two_ints_python")
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        try:
            # Inisialisasi Client
            add_two_ints = rospy.ServiceProxy('add_two_ints_python',AddTwoInts)
            response = add_two_ints(x,y)

            # Mencetak hasil response
            rospy.loginfo(response.sum)
            rate.sleep()
        except rospy.ServiceException as e:
            print("Service call failed %s",e)

if __name__ == '__main__':
    add_two_ints_client(12,10)