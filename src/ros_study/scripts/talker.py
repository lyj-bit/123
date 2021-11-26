#!/usr/bin/env python

import rospy
from rospy.timer import sleep
from std_msgs.msg import String
from ros_study.msg import Sys
import psutil

print(psutil.cpu_percent())
print(psutil.virtual_memory().percent)
print(psutil.disk_usage("/").free)
print(psutil.net_io_counters().packets_recv)
print(psutil.sensors_temperatures()["coretemp"][0].current)

def talker():
    pub = rospy.Publisher("sys_info", Sys, queue_size=10)
    rospy.init_node("talker" , anonymous=False)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        sys = Sys()
        sys.cpu_percent = psutil.cpu_percent()
        sys.virtual_memory_percent = psutil.virtual_memory().percent
        sys.disk_free = psutil.disk_usage("/").free
        sys.net_packets_recv = psutil.net_io_counters().packets_recv
        sys.coretemp = psutil.sensors_temperatures()["coretemp"][0].current
        rospy.loginfo("edg win")
        pub.publish(sys)
        rate.sleep()

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInternalException:
        pass