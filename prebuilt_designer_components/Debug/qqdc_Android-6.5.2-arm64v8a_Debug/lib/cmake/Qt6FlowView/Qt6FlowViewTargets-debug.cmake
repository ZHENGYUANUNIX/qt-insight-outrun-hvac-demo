#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::FlowView" for configuration "Debug"
set_property(TARGET Qt6::FlowView APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::FlowView PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "Qt6::Qml;Qt6::Core"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libQt6FlowView_arm64-v8a.so"
  IMPORTED_SONAME_DEBUG "libQt6FlowView_arm64-v8a.so"
  )

list(APPEND _cmake_import_check_targets Qt6::FlowView )
list(APPEND _cmake_import_check_files_for_Qt6::FlowView "${_IMPORT_PREFIX}/lib/libQt6FlowView_arm64-v8a.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
