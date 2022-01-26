execute_process(COMMAND "/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
