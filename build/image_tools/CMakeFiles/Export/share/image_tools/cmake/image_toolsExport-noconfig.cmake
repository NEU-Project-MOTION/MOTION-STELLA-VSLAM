#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "image_tools::image_tools" for configuration ""
set_property(TARGET image_tools::image_tools APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(image_tools::image_tools PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libimage_tools.so"
  IMPORTED_SONAME_NOCONFIG "libimage_tools.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS image_tools::image_tools )
list(APPEND _IMPORT_CHECK_FILES_FOR_image_tools::image_tools "${_IMPORT_PREFIX}/lib/libimage_tools.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
