#!/usr/bin/env python

import rospy
from service_ex.srv import WordCount,WordCountResponse

def add_(request):
    print("running...")
    return WordCountResponse(request.x + request.y)

def call_back():
    rospy.init_node('service_server')
    service = rospy.Service('add',WordCount,add_)
    print('start')
    rospy.spin()

if __name__ == "__main__":
    call_back()