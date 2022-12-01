#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32         
from customMSG.msg import complex
from random import random

rospy.init_node('msg_pub')
pub = rospy.Publisher('complex',complex)
rate = rospy.Rate(2)
while not rospy.is_shutdown():
    msg = complex()
    msg.real = random()
    msg.imaginray = random()
    pub.publish(msg)
    rate.sleep()

