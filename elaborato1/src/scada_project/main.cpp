#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <sensor_msgs/JointState.h>
#include <cmath>
#include <chrono>
#include <thread>


double x = 0,y = 0,z = 0,angle_EndEffector = 0,c2 = 0,s2 = 0,t2 = 0,c1 = 0,s1 = 0,t1 = 0,d3 = 0;

long double fkValues[4];
long double ikValues[8];
long double values[4];


long double alfaZeta = 0.0;

void fk(double t1, double t2, double t4, double d3)
{
    fkValues[0] = 0.3*cos(t1+t2) + 0.3*cos(t1);
    fkValues[1] = 0.3 * sin(t1 + t2) + 0.3 * sin(t1);
    fkValues[2] = -d3;
    fkValues[3] = t1+t2-t4;
}

void ik_cin(double x,double y,double z,double alfaZeta)
{
    ikValues[0] = (pow(x, 2) + pow(y, 2)) / 0.18 - 1; //cos2
    ikValues[1] = sqrt(1 - (pow(ikValues[0], 2))); //sin2
    ikValues[2] = atan2(ikValues[1], ikValues[0]); // theta2

    ikValues[3] = (ikValues[1] * y + (ikValues[0] + 1) * x) / (0.6 * (ikValues[0] + 1)); //cos1
    ikValues[4] = sqrt(1 - pow(ikValues[3], 2)); //sin1
    if (y < 0)
    {
        ikValues[4] = sqrt(1 - pow(ikValues[3], 2)); //sin1
        ikValues[4] *= -1; //sin1
    }
    else
        ikValues[4] = sqrt(1 - pow(ikValues[3], 2)); //sin1

    ikValues[5] = atan2(ikValues[4],ikValues[3]); // theta1

    ikValues[6] = -z; //d3

    ikValues[7] = ikValues[5] + ikValues[2] - alfaZeta; //theta4

    values[0] = ikValues[5];
    values[1] = ikValues[2];
    values[2] = ikValues[6];
    values[3] = ikValues[7];
}

void poseCallback(const sensor_msgs::JointState &msg)
{
    x = msg.position[0];
    y = msg.position[1];
    z = msg.position[2];
    angle_EndEffector = msg.position[3];

    //std::cout << x << y << z << angle_EndEffector << std::endl;


    /////////////////////////////////////////////////////////////////////
    fk(x,y,angle_EndEffector,z);
    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    for(long double fkValue : fkValues)
        std::cout << fkValue << ", ";
    std::cout << std::endl << std::flush;
    /////////////////////////////////////////////////////////////////////
}

void ik(const geometry_msgs::Twist &msg)
{
    long double px = msg.linear.x;
    long double py = msg.linear.y;
    long double pz = msg.linear.z;
    long double aZ = msg.angular.z;

    //std::cout << px << py << pz << aZ << std::endl;


    ik_cin(px,py,pz,aZ);

    std::this_thread::sleep_for(std::chrono::milliseconds(500));
    for(long double value : values)
        std::cout << value << ", ";
    std::cout << std::endl << std::flush;
}

bool workspace_control(double x, double y, double z)
{
    double a1 = 0.3;
    double a2 = 0.3;
    double rad1 = 2.5;
    double rad2 = 2;
    double z_min = -0.45;
    double z_max = 0;
    if(z < z_min || z > z_max) {
        return false;
    }

    double inner_radius_pow2 = pow(a1,2) + pow(a2,2) - 2 * a1 * a2 * cos(M_PI - rad2);
    double outer_radius = a1 + a2;

    if(pow(x, 2) + pow(y, 2) > pow(outer_radius, 2) || pow(x, 2) + pow(y, 2) < inner_radius_pow2){
        return false;
    }
    if(x > outer_radius * cos(rad1))
        return true;

    double cx = a1 * cos(rad1);
    double cy = a1 * sin(rad1);
    if(pow(x-cx, 2) + pow(y-cy, 2) > pow(a2, 2) || pow(x-cx, 2) + pow(y+cy, 2) > pow(a2, 2))
        return false;

    return true;
}


/*bool ws_station (double x, double y, double z)
{
    double a1 = 0.3;
    double a2 = 0.3;
    double rad1 = 2.5;
    double rad2 = 2;
    double z_min = -0.45;
    double z_max = 0;

    if(z < z_min || z > z_max) {
        return false;
    }

    //raggio corto dato Carnot tra a1 e a2
    double inner_radius_pow2 = pow(a1,2) + pow(a2,2) - 2 * a1 * a2 * cos(M_PI - rad2);
    //raggio lungo dato dalla somma tra a1 e a2
    double outer_radius = a1 + a2;

    //raggio della circonferenza massima (formule trigonometriche)
    if(pow(x, 2) + pow(y, 2) > pow(outer_radius, 2) || pow(x, 2) + pow(y, 2) < inner_radius_pow2){
        return false;
    }
    if(x > outer_radius * cos(rad1))
        return true;

    double cx = a1 * cos(rad1);
    double cy = a1 * sin(rad1);

    //controllo della forma a cardioide
    if(pow(x-cx, 2) + pow(y-cy, 2) > pow(a2, 2) || pow(x-cx, 2) + pow(y+cy, 2) > pow(a2, 2))
        return false;

    return true;
}*/




int main(int argc, char** argv)
{
    //scelta utente
    int choice = -1, operation = -1;

    //valori per fk
    double theta1 = 0, theta2 = 0, theta4 = 0, dz = 0, x = 0, y = 0, z = 0, angleZ = 0;

    std::cout << "Automatic or manually: 1 or 2" << std::endl;
    std::cin >> choice;

    if (choice == 2)
    {
        std::cout << "fk or ik: 1 or 2" << std::endl;
        std::cin >> operation;

        if(operation == 1) //cinematic diretta
        {
            do
            {
                std::cout << "insert theta1" << std::endl;
                std::cin >> theta1;
                std::cout << "insert theta2" << std::endl;
                std::cin >> theta2;
                std::cout << "insert theta4" << std::endl;
                std::cin >> theta4;
                std::cout << "insert d3" << std::endl;
                std::cin >> dz;
            }while(!(theta1 >= -2.5 && theta1 <= 2.5) || !(theta2 >= -2 && theta2 <= 2) || !(theta4 >= -3 && theta1 <= 3) || !(dz >= 0 && dz <= 0.45));

            //call fk
            std::cout << "fk:" << std::endl;
            fk(theta1,theta2,theta4,dz);

            for(long double fkValue : fkValues)
                std::cout << fkValue << ", ";

            std::cout << std::endl;
        }
        else //cinemtica inversa
        {
            do
            {
                std::cout << "insert x" << std::endl;
                std::cin >> x;
                std::cout << "insert y" << std::endl;
                std::cin >> y;
                std::cout << "insert z" << std::endl;
                std::cin >> z;
                std::cout << "insert angle z" << std::endl;
                std::cin >> angleZ;
            }while(!(workspace_control(x,y,z)));

            std::cout << "ik:" << std::endl;
            //call ik
            ik_cin(x,y,z,angleZ);

            std::this_thread::sleep_for(std::chrono::milliseconds(500));
            for (long double value : values)
                std::cout << value << ", ";
            std::cout << std::endl << std::flush;

            std::cout << std::endl;
        }
    }
    else
    {
        ros::init(argc, argv, "main");
        ros::NodeHandle node;

        ros::Subscriber joint_state_sub_ = node.subscribe("/joint_states", 1, &poseCallback);
        ros::Subscriber positionEndEffector = node.subscribe("/point", 1, &ik);

        ros::spin();
    }
    return 0;
}