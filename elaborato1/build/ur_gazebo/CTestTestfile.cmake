# CMake generated Testfile for 
# Source directory: /home/leo/elaborato1/src/universal_robot/ur_gazebo
# Build directory: /home/leo/elaborato1/build/ur_gazebo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ur_gazebo_roslaunch-check_tests_roslaunch_test.xml "/home/leo/elaborato1/build/ur_gazebo/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/leo/elaborato1/build/ur_gazebo/test_results/ur_gazebo/roslaunch-check_tests_roslaunch_test.xml.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/leo/elaborato1/build/ur_gazebo/test_results/ur_gazebo" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/leo/elaborato1/build/ur_gazebo/test_results/ur_gazebo/roslaunch-check_tests_roslaunch_test.xml.xml' '/home/leo/elaborato1/src/universal_robot/ur_gazebo/tests/roslaunch_test.xml' ")
subdirs("gtest")
