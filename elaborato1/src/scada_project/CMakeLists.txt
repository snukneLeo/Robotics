cmake_minimum_required(VERSION 2.8.3)
project(scada_project)
find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        roscpp
        rospy
        std_msgs
        tf2
        tf2_ros
        tf2_geometry_msgs
        tf
        )

## Declare ROS messages and services
add_message_files(FILES Message.msg)
add_service_files(FILES Service.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package(
        #  INCLUDE_DIRS include
        #  LIBRARIES turtle_tf2
        CATKIN_DEPENDS geometry_msgs roscpp rospy std_msgs tf2 tf2_ros tf
        #  DEPENDS system_lib
)

## Build main
include_directories(include ${catkin_INCLUDE_DIRS})

#EXECUTABLE main
add_executable(publisher publisher.cpp)
target_link_libraries(publisher ${catkin_LIBRARIES})
add_dependencies(publisher publisher)

add_executable(main main.cpp)
target_link_libraries(main ${catkin_LIBRARIES})
add_dependencies(main main)