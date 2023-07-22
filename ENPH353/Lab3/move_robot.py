#!/usr/bin/env python3
from __future__ import print_function
from geometry_msgs.msg import Twist
import sys
import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class image_converter:

  def __init__(self):
    self.cmd_pub = rospy.Publisher("cmd_vel",Twist)

    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("rrbot/camera1/image_raw",Image,self.callback)

  def callback(self,data):
    #Translates from ROS images to OpenCV images
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeEror as e:
      print(e)

    #Analyze the OpenCV image to figure out which way to move
    threshold = 160
    gray = cv2.cvtColor(cv_image, cv2.COLOR_RGB2GRAY)
    # color = cv2.cvtColor(gray, cv2.COLOR_GRAY2BGR)
    blur = cv2.GaussianBlur(gray,(3,3),0)
    _, img_bin = cv2.threshold(gray, threshold, 255, cv2.THRESH_BINARY)

    line = []
    for x in range (0,799):
        if img_bin[600,x] == 0:
          line.append(x)
    if len(line) == 0:
        avg = 400
    else:
        avg = int(sum(line)/len(line))

    cv2.imshow("Image window", img_bin)
    cv2.waitKey(3)

    #Create a move object with linear and angular paramters that move robot so line is in center
    move = Twist()

    angMax = 8
    move.linear.x = 1
    move.angular.z = (1-avg/400)*angMax
    
    try:
      self.cmd_pub.publish(move)
    except CvBridgeError as e:
      print(e)

def main(args):
  ic = image_converter()
  rospy.init_node('image_converter', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)