#!/usr/bin/env python3

import rospy
from demo_package.msg import Pesan

def talker():
    # Inisialisasi Publisher
    message_pub = rospy.Publisher("topik_utama_python", Pesan, queue_size=10)

    # Inisialisasi Node
    rospy.init_node('publisher',anonymous=True)

    # Rate pengiriman pesan sebesar 1hz (1 pesan setiap detik)
    rate = rospy.Rate(1)

    # rospy.is_shutdown() sama aja seperti ros::ok()
    while not rospy.is_shutdown():

        # Variabel dengan tipe msg yang telah ditentukan
        dataVariabel = Pesan()

        # Pemberian nama terhadap masing-masing data didalam variabel
        dataVariabel.pesan1 = 12
        dataVariabel.pesan2 = 2.5
        dataVariabel.pesan3 = "Ini pesan yang mau dikirim"

        # Mencetak hasil variabel kedalam console publisher.py
        rospy.loginfo("\npesan pertama: %ld" % dataVariabel.pesan1)
        rospy.loginfo("pesan kedua: %lf" % dataVariabel.pesan2)
        rospy.loginfo("pesan ketiga: %s" % dataVariabel.pesan3)

        # Mengirim variabel kedalam topik "topik_utama_python"
        message_pub.publish(dataVariabel)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass