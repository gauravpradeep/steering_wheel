# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "eve_msgs: 5 messages, 5 services")

set(MSG_I_FLAGS "-Ieve_msgs:/home/summer/eshaan/logitech_ws/src/eve_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(eve_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" ""
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" ""
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" ""
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" ""
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" NAME_WE)
add_custom_target(_eve_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "eve_msgs" "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_msg_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_msg_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_msg_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_msg_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)

### Generating Services
_generate_srv_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_srv_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_srv_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_srv_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)
_generate_srv_cpp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
)

### Generating Module File
_generate_module_cpp(eve_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(eve_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(eve_msgs_generate_messages eve_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_cpp _eve_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eve_msgs_gencpp)
add_dependencies(eve_msgs_gencpp eve_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eve_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_msg_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_msg_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_msg_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_msg_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)

### Generating Services
_generate_srv_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_srv_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_srv_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_srv_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)
_generate_srv_eus(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
)

### Generating Module File
_generate_module_eus(eve_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(eve_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(eve_msgs_generate_messages eve_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_eus _eve_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eve_msgs_geneus)
add_dependencies(eve_msgs_geneus eve_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eve_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_msg_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_msg_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_msg_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_msg_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)

### Generating Services
_generate_srv_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_srv_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_srv_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_srv_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)
_generate_srv_lisp(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
)

### Generating Module File
_generate_module_lisp(eve_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(eve_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(eve_msgs_generate_messages eve_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_lisp _eve_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eve_msgs_genlisp)
add_dependencies(eve_msgs_genlisp eve_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eve_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_msg_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_msg_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_msg_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_msg_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)

### Generating Services
_generate_srv_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_srv_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_srv_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_srv_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)
_generate_srv_nodejs(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
)

### Generating Module File
_generate_module_nodejs(eve_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(eve_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(eve_msgs_generate_messages eve_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_nodejs _eve_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eve_msgs_gennodejs)
add_dependencies(eve_msgs_gennodejs eve_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eve_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_msg_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_msg_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_msg_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_msg_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)

### Generating Services
_generate_srv_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_srv_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_srv_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_srv_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)
_generate_srv_py(eve_msgs
  "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
)

### Generating Module File
_generate_module_py(eve_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(eve_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(eve_msgs_generate_messages eve_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Gear.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Wiper.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Horn.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Acceleration.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Headlight.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/srv/Override.srv" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Control.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Brake.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Status.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/summer/eshaan/logitech_ws/src/eve_msgs/msg/Steering.msg" NAME_WE)
add_dependencies(eve_msgs_generate_messages_py _eve_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(eve_msgs_genpy)
add_dependencies(eve_msgs_genpy eve_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS eve_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/eve_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(eve_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/eve_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(eve_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/eve_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(eve_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/eve_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(eve_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/eve_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(eve_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
