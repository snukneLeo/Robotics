cmake_minimum_required(VERSION 2.8.3)
project(elaboratoR1_B)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp std_msgs genmsg)

## Declare ROS messages and services
add_message_files(FILES Message.msg)
add_service_files(FILES Service.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(instanode instanode.cpp)
target_link_libraries(instanode ${catkin_LIBRARIES})
add_dependencies(instanode instanode)