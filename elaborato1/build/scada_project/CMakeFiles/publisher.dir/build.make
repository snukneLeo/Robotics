# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leo/elaborato1/src/scada_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leo/elaborato1/build/scada_project

# Include any dependencies generated for this target.
include CMakeFiles/publisher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/publisher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/publisher.dir/flags.make

CMakeFiles/publisher.dir/publisher.cpp.o: CMakeFiles/publisher.dir/flags.make
CMakeFiles/publisher.dir/publisher.cpp.o: /home/leo/elaborato1/src/scada_project/publisher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/elaborato1/build/scada_project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/publisher.dir/publisher.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/publisher.dir/publisher.cpp.o -c /home/leo/elaborato1/src/scada_project/publisher.cpp

CMakeFiles/publisher.dir/publisher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/publisher.dir/publisher.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/elaborato1/src/scada_project/publisher.cpp > CMakeFiles/publisher.dir/publisher.cpp.i

CMakeFiles/publisher.dir/publisher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/publisher.dir/publisher.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/elaborato1/src/scada_project/publisher.cpp -o CMakeFiles/publisher.dir/publisher.cpp.s

CMakeFiles/publisher.dir/publisher.cpp.o.requires:

.PHONY : CMakeFiles/publisher.dir/publisher.cpp.o.requires

CMakeFiles/publisher.dir/publisher.cpp.o.provides: CMakeFiles/publisher.dir/publisher.cpp.o.requires
	$(MAKE) -f CMakeFiles/publisher.dir/build.make CMakeFiles/publisher.dir/publisher.cpp.o.provides.build
.PHONY : CMakeFiles/publisher.dir/publisher.cpp.o.provides

CMakeFiles/publisher.dir/publisher.cpp.o.provides.build: CMakeFiles/publisher.dir/publisher.cpp.o


# Object files for target publisher
publisher_OBJECTS = \
"CMakeFiles/publisher.dir/publisher.cpp.o"

# External object files for target publisher
publisher_EXTERNAL_OBJECTS =

/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: CMakeFiles/publisher.dir/publisher.cpp.o
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: CMakeFiles/publisher.dir/build.make
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/liborocos-kdl.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/liborocos-kdl.so.1.4.0
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libtf.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libtf2_ros.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libactionlib.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libmessage_filters.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libroscpp.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libtf2.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/librosconsole.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/librostime.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /opt/ros/melodic/lib/libcpp_common.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher: CMakeFiles/publisher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leo/elaborato1/build/scada_project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/publisher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/publisher.dir/build: /home/leo/elaborato1/devel/.private/scada_project/lib/scada_project/publisher

.PHONY : CMakeFiles/publisher.dir/build

CMakeFiles/publisher.dir/requires: CMakeFiles/publisher.dir/publisher.cpp.o.requires

.PHONY : CMakeFiles/publisher.dir/requires

CMakeFiles/publisher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/publisher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/publisher.dir/clean

CMakeFiles/publisher.dir/depend:
	cd /home/leo/elaborato1/build/scada_project && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leo/elaborato1/src/scada_project /home/leo/elaborato1/src/scada_project /home/leo/elaborato1/build/scada_project /home/leo/elaborato1/build/scada_project /home/leo/elaborato1/build/scada_project/CMakeFiles/publisher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/publisher.dir/depend

