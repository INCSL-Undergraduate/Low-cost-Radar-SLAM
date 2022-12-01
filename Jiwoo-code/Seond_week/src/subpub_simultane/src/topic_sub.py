#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
from customMSG.msg import complex
def callback(msg):
    doubled = Int32()
    doubled.data = msg.real
    print(msg.real)
    print(msg.imaginray)

    pub.publish(doubled)

rospy.init_node('topic_sub')
sub = rospy.Subscriber('complex',complex,callback)
pub = rospy.Publisher('doubled',Int32)
rospy.spin()
