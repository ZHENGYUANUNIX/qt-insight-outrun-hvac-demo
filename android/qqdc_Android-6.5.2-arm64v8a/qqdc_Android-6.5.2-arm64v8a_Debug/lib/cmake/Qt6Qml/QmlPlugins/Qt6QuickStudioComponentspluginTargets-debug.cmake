#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickStudioComponentsplugin" for configuration "Debug"
set_property(TARGET Qt6::QuickStudioComponentsplugin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::QuickStudioComponentsplugin PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./qml/QtQuick/Studio/Components/libqml_QtQuick_Studio_Components_quickstudiocomponentsplugin_arm64-v8a.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickStudioComponentsplugin )
list(APPEND _cmake_import_check_files_for_Qt6::QuickStudioComponentsplugin "${_IMPORT_PREFIX}/./qml/QtQuick/Studio/Components/libqml_QtQuick_Studio_Components_quickstudiocomponentsplugin_arm64-v8a.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
