#!/usr/bin/env python

import rospy
from service_ex.srv import WordCount 
import sys


def call_back(x,y):
    print("fuck")
    rospy.wait_for_service('add')
    try:
        add_two = rospy.ServiceProxy('add',WordCount)
        resp1 = add_two(x,y)
        return resp1.z
    except rospy.ServiceException as e:
        print("fucked")

if __name__ == "__main__":
    x = 1
    y = 2
    sum = call_back(x,y)
    print(sum)