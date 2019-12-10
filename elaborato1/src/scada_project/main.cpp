#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <sensor_msgs/JointState.h>
#include <cmath>
#include <chrono>
#include <thread>


double x = 0,y = 0,z = 0,angle_EndEffector = 0,c2 = 0,s2 = 0,t2 = 0,c1 = 0,s1 = 0,t1 = 0,d3 = 0;

double fkValues[4];
double ikValues[8];
double values[4];


double alfaZeta = 0.0;

double *fk(double t1, double t2, double t4, double d3)
{
    fkValues[0] = 0.5*cos(t1+t2) + 0.5*cos(t1);
    fkValues[1] = 0.5 * sin(t1 + t2) + 0.5 * sin(t1);
    fkValues[2] = -d3;
    fkValues[3] = t1+t2-t4;

    return fkValues;
}

double *ik(double x,double y,double z,double alfaZeta)
{
    ikValues[0] = (pow(x,2) + pow(y,2))/0.18 - 1; //cos2
    ikValues[1] = sqrt(1-(pow(ikValues[0],2))); //sin2
    ikValues[2] = atan2(ikValues[1],ikValues[0]); // theta2

    ikValues[3] = (ikValues[1]*y + (ikValues[0]+1)*x)/(0.6*(ikValues[0]+1)); //cos1
    ikValues[4] = sqrt(1 - pow(ikValues[3], 2)); //sin1
    ikValues[5] = atan2(ikValues[4],ikValues[3]); // theta1

    ikValues[6] = -z; //d3

    ikValues[7] = ikValues[5] + ikValues[2] - alfaZeta; //theta4

    values[0] = ikValues[5];
    values[1] = ikValues[2];
    values[2] = ikValues[6];
    values[3] = ikValues[7];

    return values;
}


void poseCallback(const sensor_msgs::JointState &msg)
{
    x = msg.position[0];
    y = msg.position[1];
    z = msg.position[2];
    angle_EndEffector = msg.position[3];

    //std::cout << x << y << z << angle_EndEffector << std::endl;


    /////////////////////////////////////////////////////////////////////
    double *array_fk = fk(x,y,angle_EndEffector,z);
    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    for(int i = 0; i< 4; i++)
        std::cout << array_fk[i] << ", ";
    std::cout << std::endl << std::flush;
    /////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////
    //double *array_ik = ik(array_fk[0],array_fk[1],array_fk[2],array_fk[3]);
    double *array_ik = ik(0,0.6,0,0);

    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    for(int i = 0; i< 4; i++)
        std::cout << array_ik[i] << ", ";
    std::cout << std::endl << std::flush;
    /////////////////////////////////////////////////////////////////////
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "main");
    ros::NodeHandle node;

    ros::Subscriber joint_state_sub_ = node.subscribe("/joint_states", 1, &poseCallback);

    ros::spin();
    return 0;
}