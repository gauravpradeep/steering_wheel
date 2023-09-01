cmake_minimum_required(VERSION 2.8.3)
project(logitech_steering)
add_compile_options(-std=c++11)
find_package(catkin REQUIRED COMPONENTS
        roscpp
        std_msgs
        message_generation
        sensor_msgs
        cv_bridge
        eve_msgs
        )
find_package(OpenCV REQUIRED)

include_directories("usr/include")
find_library(JSONCPP jsoncpp)
## Generate messages in the 'msg' folder

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )


## Generate added messages and services with any dependencies listed here
generate_messages(
        DEPENDENCIES
        sensor_msgs
        std_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

catkin_package(
#        INCLUDE_DIRS include
        LIBRARIES logitech_interfacing eve_nav
        CATKIN_DEPENDS message_runtime
        cv_bridge
        #  DEPENDS system_lib
)

include_directories(
        include
        ${catkin_INCLUDE_DIRS}
        ${OpenCV_INCLUDE_DIRS}
)
## The recommended prefix ensures that target names across packages don't collide
add_executable(server_node src/logitech_server.cpp)
add_dependencies(server_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(server_node
        ${catkin_LIBRARIES} 
        jsoncpp
)
