#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from ros_study.msg import Sys

def callback(data):
    rospy.loginfo(data)

def receiver():
    rospy.init_node("receiver", anonymous=False)
    rospy.Subscriber("sys_info", Sys, callback)
    rospy.spin()

if  __name__ == "__main__":
    receiver()
