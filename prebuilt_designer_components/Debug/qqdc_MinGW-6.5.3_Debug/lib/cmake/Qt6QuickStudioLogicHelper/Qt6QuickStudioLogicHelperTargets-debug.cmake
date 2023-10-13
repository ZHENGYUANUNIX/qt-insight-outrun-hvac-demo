#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickStudioLogicHelper" for configuration "Debug"
set_property(TARGET Qt6::QuickStudioLogicHelper APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::QuickStudioLogicHelper PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/libQt6QuickStudioLogicHelper.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "Qt6::Qml;Qt6::Core"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/Qt6QuickStudioLogicHelper.dll"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickStudioLogicHelper )
list(APPEND _cmake_import_check_files_for_Qt6::QuickStudioLogicHelper "${_IMPORT_PREFIX}/lib/libQt6QuickStudioLogicHelper.a" "${_IMPORT_PREFIX}/bin/Qt6QuickStudioLogicHelper.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)