#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickStudioEventSimulatorplugin" for configuration "Debug"
set_property(TARGET Qt6::QuickStudioEventSimulatorplugin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::QuickStudioEventSimulatorplugin PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./qml/QtQuick/Studio/EventSimulator/libqml_QtQuick_Studio_EventSimulator_quickstudioeventsimulatorplugin_arm64-v8a.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickStudioEventSimulatorplugin )
list(APPEND _cmake_import_check_files_for_Qt6::QuickStudioEventSimulatorplugin "${_IMPORT_PREFIX}/./qml/QtQuick/Studio/EventSimulator/libqml_QtQuick_Studio_EventSimulator_quickstudioeventsimulatorplugin_arm64-v8a.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)