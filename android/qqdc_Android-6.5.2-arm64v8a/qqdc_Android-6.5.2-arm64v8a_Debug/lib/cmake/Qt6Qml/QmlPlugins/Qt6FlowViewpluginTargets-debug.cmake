#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::FlowViewplugin" for configuration "Debug"
set_property(TARGET Qt6::FlowViewplugin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::FlowViewplugin PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./qml/FlowView/libflowviewplugin_arm64-v8a.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _cmake_import_check_targets Qt6::FlowViewplugin )
list(APPEND _cmake_import_check_files_for_Qt6::FlowViewplugin "${_IMPORT_PREFIX}/./qml/FlowView/libflowviewplugin_arm64-v8a.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)