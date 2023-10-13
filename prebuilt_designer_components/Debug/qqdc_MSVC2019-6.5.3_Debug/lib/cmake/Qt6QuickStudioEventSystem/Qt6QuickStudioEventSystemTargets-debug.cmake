#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickStudioEventSystem" for configuration "Debug"
set_property(TARGET Qt6::QuickStudioEventSystem APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::QuickStudioEventSystem PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/Qt6QuickStudioEventSystemd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "Qt6::Qml;Qt6::Core"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/Qt6QuickStudioEventSystemd.dll"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickStudioEventSystem )
list(APPEND _cmake_import_check_files_for_Qt6::QuickStudioEventSystem "${_IMPORT_PREFIX}/lib/Qt6QuickStudioEventSystemd.lib" "${_IMPORT_PREFIX}/bin/Qt6QuickStudioEventSystemd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
