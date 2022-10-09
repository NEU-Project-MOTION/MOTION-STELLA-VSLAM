# CMake generated Testfile for 
# Source directory: /home/ubuntu/ros2_ws/src/image_tools
# Build directory: /home/ubuntu/ros2_ws/src/build/image_tools
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_showimage_cam2image__rmw_fastrtps_cpp "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/test_showimage_cam2image__rmw_fastrtps_cpp.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/launch_test/CHANGEME.txt" "--env" "RCL_ASSERT_RMW_ID_MATCHES=rmw_fastrtps_cpp" "RMW_IMPLEMENTATION=rmw_fastrtps_cpp" "--command" "/usr/bin/python3" "-m" "launch_testing.launch_test" "/home/ubuntu/ros2_ws/src/build/image_tools/test_showimage_cam2image__rmw_fastrtps_cpp_.py" "--junit-xml=/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/test_showimage_cam2image__rmw_fastrtps_cpp.xunit.xml" "--package-name=image_tools")
set_tests_properties(test_showimage_cam2image__rmw_fastrtps_cpp PROPERTIES  TIMEOUT "30" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/build/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/launch_testing_ament_cmake/cmake/add_launch_test.cmake;125;ament_add_test;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;83;add_launch_test;/home/ubuntu/ros2_ws/src/build/image_tools/call_for_each_rmw_implementation.cmake;1;testing_targets;/home/ubuntu/ros2_ws/src/build/image_tools/call_for_each_rmw_implementation.cmake;0;;/opt/ros/foxy/share/rmw_implementation_cmake/cmake/call_for_each_rmw_implementation.cmake;64;include;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;93;call_for_each_rmw_implementation;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/copyright.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/ament_copyright/copyright.txt" "--command" "/opt/ros/foxy/bin/ament_copyright" "--xunit-file" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_copyright.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;18;ament_copyright;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;97;ament_package;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/cppcheck.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/foxy/bin/ament_cppcheck" "--xunit-file" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/cppcheck.xunit.xml" "--include_dirs" "/home/ubuntu/ros2_ws/src/image_tools/include")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "300" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cppcheck.cmake;61;ament_add_test;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cmake_cppcheck_lint_hook.cmake;83;ament_cppcheck;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cmake_cppcheck_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;97;ament_package;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
add_test(cpplint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/cpplint.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/ament_cpplint/cpplint.txt" "--command" "/opt/ros/foxy/bin/ament_cpplint" "--xunit-file" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/cpplint.xunit.xml")
set_tests_properties(cpplint PROPERTIES  LABELS "cpplint;linter" TIMEOUT "120" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cpplint.cmake;68;ament_add_test;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cmake_cpplint_lint_hook.cmake;35;ament_cpplint;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cmake_cpplint_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;97;ament_package;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/lint_cmake.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/foxy/bin/ament_lint_cmake" "--xunit-file" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;97;ament_package;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
add_test(uncrustify "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/uncrustify.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/ament_uncrustify/uncrustify.txt" "--command" "/opt/ros/foxy/bin/ament_uncrustify" "--xunit-file" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/uncrustify.xunit.xml")
set_tests_properties(uncrustify PROPERTIES  LABELS "uncrustify;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_uncrustify.cmake;65;ament_add_test;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_cmake_uncrustify_lint_hook.cmake;34;ament_uncrustify;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_cmake_uncrustify_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;97;ament_package;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/xmllint.xunit.xml" "--package-name" "image_tools" "--output-file" "/home/ubuntu/ros2_ws/src/build/image_tools/ament_xmllint/xmllint.txt" "--command" "/opt/ros/foxy/bin/ament_xmllint" "--xunit-file" "/home/ubuntu/ros2_ws/src/build/image_tools/test_results/image_tools/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/ubuntu/ros2_ws/src/image_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;97;ament_package;/home/ubuntu/ros2_ws/src/image_tools/CMakeLists.txt;0;")
