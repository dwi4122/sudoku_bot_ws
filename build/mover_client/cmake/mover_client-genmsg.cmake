# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mover_client: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imover_client:/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mover_client_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" NAME_WE)
add_custom_target(_mover_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mover_client" "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" ""
)

get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" NAME_WE)
add_custom_target(_mover_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mover_client" "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" "mover_client/grid_num"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mover_client
)
_generate_msg_cpp(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mover_client
)

### Generating Services

### Generating Module File
_generate_module_cpp(mover_client
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mover_client
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mover_client_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mover_client_generate_messages mover_client_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_cpp _mover_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_cpp _mover_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mover_client_gencpp)
add_dependencies(mover_client_gencpp mover_client_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mover_client_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mover_client
)
_generate_msg_eus(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mover_client
)

### Generating Services

### Generating Module File
_generate_module_eus(mover_client
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mover_client
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mover_client_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mover_client_generate_messages mover_client_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_eus _mover_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_eus _mover_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mover_client_geneus)
add_dependencies(mover_client_geneus mover_client_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mover_client_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mover_client
)
_generate_msg_lisp(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mover_client
)

### Generating Services

### Generating Module File
_generate_module_lisp(mover_client
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mover_client
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mover_client_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mover_client_generate_messages mover_client_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_lisp _mover_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_lisp _mover_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mover_client_genlisp)
add_dependencies(mover_client_genlisp mover_client_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mover_client_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mover_client
)
_generate_msg_nodejs(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mover_client
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mover_client
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mover_client
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mover_client_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mover_client_generate_messages mover_client_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_nodejs _mover_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_nodejs _mover_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mover_client_gennodejs)
add_dependencies(mover_client_gennodejs mover_client_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mover_client_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mover_client
)
_generate_msg_py(mover_client
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mover_client
)

### Generating Services

### Generating Module File
_generate_module_py(mover_client
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mover_client
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mover_client_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mover_client_generate_messages mover_client_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_py _mover_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rdwi4122/sudoku_bot_ws/src/mover_client/msg/grid_num_vector.msg" NAME_WE)
add_dependencies(mover_client_generate_messages_py _mover_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mover_client_genpy)
add_dependencies(mover_client_genpy mover_client_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mover_client_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mover_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mover_client
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mover_client_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mover_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mover_client
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mover_client_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mover_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mover_client
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mover_client_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mover_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mover_client
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mover_client_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mover_client)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mover_client\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mover_client
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mover_client_generate_messages_py std_msgs_generate_messages_py)
endif()
