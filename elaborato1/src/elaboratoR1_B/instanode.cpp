
#include "ros/ros.h"
#include <geometry_msgs/Twist.h>
#include <turtlesim/Pose.h>

#include <sstream>

float linx = 1, angz = 1;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "intranode");
    ros::NodeHandle n;
    //define pub
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);

    ros::Rate loop_rate(10);

    //define type message
    geometry_msgs::Twist msg;

    //This part permit to set values, but it's not necessary
    /*
    std::cout<<"Insert x:  \n";
    std::cin >> linx; //set x
    std::cout<<"Insert z: \n";
    std::cin >> angz; //set angle
     */

    while (ros::ok())
    {
        //default values:
            //linx = 1
            //angz = 1
        msg.linear.x = linx; //define value by linx
        msg.angular.z = angz; //define value by angz

        pub.publish(msg); //publish message with values

        loop_rate.sleep();
        ros::spinOnce();
    }
    return 0;
}