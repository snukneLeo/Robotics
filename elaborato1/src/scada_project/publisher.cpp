#include <ros/ros.h>
#include <tf/transform_listener.h>


int main(int argc, char **argv) {
    ros::init(argc, argv, "my_tf_listener");
    ros::NodeHandle node;

    ros::Publisher point = node.advertise<geometry_msgs::Twist>("point", 1000);

    tf::TransformListener listener;

    ros::Rate rate(10);
    while (node.ok()) {
        tf::StampedTransform transform;
        try {
            ros::Time now = ros::Time::now();
            listener.waitForTransform("/Rotate_endEffector", "/base_link", now, ros::Duration(0.5));
            listener.lookupTransform("/Rotate_endEffector", "/base_link", ros::Time(0), transform);
        }
        catch (tf::TransformException ex)
        {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
        }

        //define message
        geometry_msgs::Twist msg;

        msg.linear.x = transform.getOrigin().x();
        msg.linear.y = transform.getOrigin().y();
        msg.linear.z = transform.getOrigin().z();
        msg.angular.z = transform.getRotation().z();

        //publish message
        point.publish(msg);
        std::cout << msg << std::endl;

        rate.sleep();
    }
    return 0;
}