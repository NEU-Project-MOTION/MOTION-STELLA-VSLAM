# CMake generated Testfile for 
# Source directory: /home/ubuntu/ros2_ws/src/vision_opencv/cv_bridge/test
# Build directory: /home/ubuntu/ros2_ws/build/cv_bridge/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cv_bridge-utest "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/build/cv_bridge/test_results/cv_bridge/cv_bridge-utest.gtest.xml" "--package-name" "cv_bridge" "--output-file" "/home/ubuntu/ros2_ws/build/cv_bridge/ament_cmake_gtest/cv_bridge-utest.txt" "--append-env" "LD_LIBRARY_PATH=/home/ubuntu/ros2_ws/build/cv_bridge/src" "--command" "/home/ubuntu/ros2_ws/build/cv_bridge/test/cv_bridge-utest" "--gtest_output=xml:/home/ubuntu/ros2_ws/build/cv_bridge/test_results/cv_bridge/cv_bridge-utest.gtest.xml")
set_tests_properties(cv_bridge-utest PROPERTIES  LABELS "gtest" REQUIRED_FILES "/home/ubuntu/ros2_ws/build/cv_bridge/test/cv_bridge-utest" TIMEOUT "60" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/build/cv_bridge/test" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gtest/cmake/ament_add_gtest_test.cmake;86;ament_add_test;/opt/ros/foxy/share/ament_cmake_gtest/cmake/ament_add_gtest.cmake;93;ament_add_gtest_test;/home/ubuntu/ros2_ws/src/vision_opencv/cv_bridge/test/CMakeLists.txt;16;ament_add_gtest;/home/ubuntu/ros2_ws/src/vision_opencv/cv_bridge/test/CMakeLists.txt;0;")
subdirs("../gtest")
