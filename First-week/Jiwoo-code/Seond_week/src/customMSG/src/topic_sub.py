#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
from customMSG.msg import complex
def callback(msg):
    print(msg.real)
    print(msg.imaginray)

rospy.init_node('topic_sub')
sub = rospy.Subscriber('complex',complex,callback)
rospy.spin()
