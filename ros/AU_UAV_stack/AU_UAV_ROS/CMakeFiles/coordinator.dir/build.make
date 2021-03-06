# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS

# Include any dependencies generated for this target.
include CMakeFiles/coordinator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/coordinator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/coordinator.dir/flags.make

CMakeFiles/coordinator.dir/src/coordinator.o: CMakeFiles/coordinator.dir/flags.make
CMakeFiles/coordinator.dir/src/coordinator.o: src/coordinator.cpp
CMakeFiles/coordinator.dir/src/coordinator.o: manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/coordinator.dir/src/coordinator.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/coordinator.dir/src/coordinator.o -c /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/coordinator.cpp

CMakeFiles/coordinator.dir/src/coordinator.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coordinator.dir/src/coordinator.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/coordinator.cpp > CMakeFiles/coordinator.dir/src/coordinator.i

CMakeFiles/coordinator.dir/src/coordinator.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coordinator.dir/src/coordinator.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/coordinator.cpp -o CMakeFiles/coordinator.dir/src/coordinator.s

CMakeFiles/coordinator.dir/src/coordinator.o.requires:
.PHONY : CMakeFiles/coordinator.dir/src/coordinator.o.requires

CMakeFiles/coordinator.dir/src/coordinator.o.provides: CMakeFiles/coordinator.dir/src/coordinator.o.requires
	$(MAKE) -f CMakeFiles/coordinator.dir/build.make CMakeFiles/coordinator.dir/src/coordinator.o.provides.build
.PHONY : CMakeFiles/coordinator.dir/src/coordinator.o.provides

CMakeFiles/coordinator.dir/src/coordinator.o.provides.build: CMakeFiles/coordinator.dir/src/coordinator.o

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: CMakeFiles/coordinator.dir/flags.make
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: src/AU_UAV_ROS/PlaneCoordinator.cpp
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o -c /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/AU_UAV_ROS/PlaneCoordinator.cpp

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/AU_UAV_ROS/PlaneCoordinator.cpp > CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.i

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/AU_UAV_ROS/PlaneCoordinator.cpp -o CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.s

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.requires:
.PHONY : CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.requires

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.provides: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.requires
	$(MAKE) -f CMakeFiles/coordinator.dir/build.make CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.provides.build
.PHONY : CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.provides

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.provides.build: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: CMakeFiles/coordinator.dir/flags.make
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: src/AU_UAV_ROS/standardDefs.cpp
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o -c /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/AU_UAV_ROS/standardDefs.cpp

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/AU_UAV_ROS/standardDefs.cpp > CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.i

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/src/AU_UAV_ROS/standardDefs.cpp -o CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.s

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.requires:
.PHONY : CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.requires

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.provides: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.requires
	$(MAKE) -f CMakeFiles/coordinator.dir/build.make CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.provides.build
.PHONY : CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.provides

CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.provides.build: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o

# Object files for target coordinator
coordinator_OBJECTS = \
"CMakeFiles/coordinator.dir/src/coordinator.o" \
"CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o" \
"CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o"

# External object files for target coordinator
coordinator_EXTERNAL_OBJECTS =

bin/coordinator: CMakeFiles/coordinator.dir/src/coordinator.o
bin/coordinator: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o
bin/coordinator: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o
bin/coordinator: CMakeFiles/coordinator.dir/build.make
bin/coordinator: CMakeFiles/coordinator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/coordinator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coordinator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/coordinator.dir/build: bin/coordinator
.PHONY : CMakeFiles/coordinator.dir/build

CMakeFiles/coordinator.dir/requires: CMakeFiles/coordinator.dir/src/coordinator.o.requires
CMakeFiles/coordinator.dir/requires: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/PlaneCoordinator.o.requires
CMakeFiles/coordinator.dir/requires: CMakeFiles/coordinator.dir/src/AU_UAV_ROS/standardDefs.o.requires
.PHONY : CMakeFiles/coordinator.dir/requires

CMakeFiles/coordinator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/coordinator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/coordinator.dir/clean

CMakeFiles/coordinator.dir/depend:
	cd /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS /home/mj/Documents/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/CMakeFiles/coordinator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/coordinator.dir/depend

