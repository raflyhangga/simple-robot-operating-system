#!/usr/bin/env python3
import rospy
from demo_package.msg import Pesan

def callback(data):
    # Mencetak pesan yang diterima
    rospy.loginfo("Pesan 1: %ld" % data.pesan1)
    rospy.loginfo("Pesan 2: %lf" % data.pesan2)
    rospy.loginfo("Pesan 1: %s" % data.pesan3)

def listener():
    # Inisialisasi Node
    rospy.init_node("subscriber",anonymous=True)

    # Inisialisasi Subscriber
    rospy.Subscriber("topik_utama_python",Pesan,callback)

    rospy.spin()

if __name__ == "__main__":
    listener()