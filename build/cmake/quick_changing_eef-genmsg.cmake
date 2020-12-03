# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "quick_changing_eef: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Ihirop_msgs:/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/kinetic/share/moveit_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/kinetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(quick_changing_eef_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" NAME_WE)
add_custom_target(_quick_changing_eef_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quick_changing_eef" "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" "hirop_msgs/Pose:geometry_msgs/Point:hirop_msgs/FixedAngle"
)

get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" NAME_WE)
add_custom_target(_quick_changing_eef_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quick_changing_eef" "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" NAME_WE)
add_custom_target(_quick_changing_eef_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quick_changing_eef" "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" ""
)

get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" NAME_WE)
add_custom_target(_quick_changing_eef_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quick_changing_eef" "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_cpp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/FixedAngle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_cpp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_cpp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef
)

### Generating Module File
_generate_module_cpp(quick_changing_eef
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(quick_changing_eef_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(quick_changing_eef_generate_messages quick_changing_eef_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_cpp _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_cpp _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_cpp _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_cpp _quick_changing_eef_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quick_changing_eef_gencpp)
add_dependencies(quick_changing_eef_gencpp quick_changing_eef_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quick_changing_eef_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_eus(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/FixedAngle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_eus(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_eus(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef
)

### Generating Module File
_generate_module_eus(quick_changing_eef
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(quick_changing_eef_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(quick_changing_eef_generate_messages quick_changing_eef_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_eus _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_eus _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_eus _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_eus _quick_changing_eef_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quick_changing_eef_geneus)
add_dependencies(quick_changing_eef_geneus quick_changing_eef_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quick_changing_eef_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_lisp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/FixedAngle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_lisp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_lisp(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef
)

### Generating Module File
_generate_module_lisp(quick_changing_eef
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(quick_changing_eef_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(quick_changing_eef_generate_messages quick_changing_eef_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_lisp _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_lisp _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_lisp _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_lisp _quick_changing_eef_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quick_changing_eef_genlisp)
add_dependencies(quick_changing_eef_genlisp quick_changing_eef_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quick_changing_eef_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_nodejs(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/FixedAngle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_nodejs(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_nodejs(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef
)

### Generating Module File
_generate_module_nodejs(quick_changing_eef
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(quick_changing_eef_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(quick_changing_eef_generate_messages quick_changing_eef_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_nodejs _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_nodejs _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_nodejs _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_nodejs _quick_changing_eef_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quick_changing_eef_gennodejs)
add_dependencies(quick_changing_eef_gennodejs quick_changing_eef_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quick_changing_eef_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_py(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv"
  "${MSG_I_FLAGS}"
  "/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/st/catkin_ws/src/HIROP_ROS-3.0/hirop_msgs/msg/FixedAngle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_py(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef
)
_generate_srv_py(quick_changing_eef
  "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef
)

### Generating Module File
_generate_module_py(quick_changing_eef
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(quick_changing_eef_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(quick_changing_eef_generate_messages quick_changing_eef_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/ObjectPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_py _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2JointPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_py _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/String.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_py _quick_changing_eef_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/st/catkin_ws/src/quick_changing_eef/srv/tool2LinkPose.srv" NAME_WE)
add_dependencies(quick_changing_eef_generate_messages_py _quick_changing_eef_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quick_changing_eef_genpy)
add_dependencies(quick_changing_eef_genpy quick_changing_eef_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quick_changing_eef_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quick_changing_eef
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(quick_changing_eef_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(quick_changing_eef_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET hirop_msgs_generate_messages_cpp)
  add_dependencies(quick_changing_eef_generate_messages_cpp hirop_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quick_changing_eef
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(quick_changing_eef_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(quick_changing_eef_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET hirop_msgs_generate_messages_eus)
  add_dependencies(quick_changing_eef_generate_messages_eus hirop_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quick_changing_eef
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(quick_changing_eef_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(quick_changing_eef_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET hirop_msgs_generate_messages_lisp)
  add_dependencies(quick_changing_eef_generate_messages_lisp hirop_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quick_changing_eef
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(quick_changing_eef_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(quick_changing_eef_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET hirop_msgs_generate_messages_nodejs)
  add_dependencies(quick_changing_eef_generate_messages_nodejs hirop_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quick_changing_eef
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(quick_changing_eef_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(quick_changing_eef_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET hirop_msgs_generate_messages_py)
  add_dependencies(quick_changing_eef_generate_messages_py hirop_msgs_generate_messages_py)
endif()
