#!/usr/bin/env python

import rospy
from rospy.timer import sleep
from std_msgs.msg import String
from ros_study.msg import Sys
import psutil

print(psutil.cpu_percent())
print(psutil.virtual_memory().percent)
print(psutil.disk_usage("/").free)
print(psutil.net_io_counters())
print(psutil.sensors_temperatures())

def talker():
    pub = rospy.Publisher("sys_info", Sys, queue_size=10)
    rospy.init_node("talker" , anonymous=False)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        sys = Sys()
        sys.cpu_percent = 1.1
        sys.virtual_memory_percent = 2.2
        sys.disk_free = 9
        rospy.loginfo("edg win")
        pub.publish(sys)
        rate.sleep()

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInternalException:
        pass