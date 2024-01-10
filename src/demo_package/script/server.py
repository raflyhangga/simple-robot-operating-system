#!/usr/bin/env python3

import rospy
from demo_package.srv import AddTwoInts,AddTwoIntsResponse

def penjumlah(req):
    # Mengolah & mencetak data
    rospy.loginfo("Returning [%ld + %ld = %ld]" % (req.value1, req.value2, (req.value1 + req.value2)))
    return AddTwoIntsResponse(req.value1 + req.value2)

def add_two_ints_server():
    # Inisialisasi Node
    rospy.init_node("server")
    
    # Insialisasi Server
    s = rospy.Service('add_two_ints_python',AddTwoInts,penjumlah)
    rospy.loginfo("Siap nambahin dua integer!")
    rospy.spin()

if __name__ == '__main__':
    add_two_ints_server()