#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <sensor_msgs/JointState.h>
#include <cmath>
#include <chrono>
#include <thread>


double x = 0,y = 0,z = 0,angle_EndEffector = 0;

double fkValues[4];
double alfaZeta = 0.0;

double *fk(double t1, double t2, double t4, double d3)
{
    fkValues[0] = 0.3*cos(t1+t2) + 0.3*cos(t1);
    fkValues[1] = 0.3 * sin(t1 + t2) + 0.3 * sin(t1);
    fkValues[2] = -d3;
    fkValues[3] = t1+t2-t4;
    return fkValues;
}




void poseCallback(const sensor_msgs::JointState &msg)
{
    x = msg.position[0];
    y = msg.position[1];
    z = msg.position[2];
    angle_EndEffector = msg.position[3];

    //std::cout << x << y << z << angle_EndEffector << std::endl;


    double *array = fk(x,y,angle_EndEffector,z);
    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    for(int i = 0; i< 4; i++)
        std::cout << array[i] << ", ";
    std::cout << std::endl << std::flush;
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "main");
    ros::NodeHandle node;

    ros::Subscriber joint_state_sub_ = node.subscribe("/joint_states", 1, &poseCallback);

    ros::spin();
    return 0;
}