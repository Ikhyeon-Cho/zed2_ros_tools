cmake_minimum_required(VERSION 3.0.2)
project(zed2_ros_tools)
add_compile_options(-std=c++17)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    tf2_ros
    cv_bridge
    sensor_msgs
    zed_wrapper
)
find_package(yaml-cpp REQUIRED)

catkin_package(
  INCLUDE_DIRS 
    #include
  CATKIN_DEPENDS 
    roscpp
    rospy
    tf2_ros
    cv_bridge
    sensor_msgs
)

###########
## Build ##
###########
set(CMAKE_BUILD_TYPE Release)

include_directories(
  ${catkin_INCLUDE_DIRS}
)