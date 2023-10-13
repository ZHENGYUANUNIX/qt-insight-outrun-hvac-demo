#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickUltraLiteStudioLayersplugin" for configuration "Debug"
set_property(TARGET Qt6::QuickUltraLiteStudioLayersplugin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::QuickUltraLiteStudioLayersplugin PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./qml/QtQuickUltralite/Layers/quickultralitestudiolayersplugin.dll"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickUltraLiteStudioLayersplugin )
list(APPEND _cmake_import_check_files_for_Qt6::QuickUltraLiteStudioLayersplugin "${_IMPORT_PREFIX}/./qml/QtQuickUltralite/Layers/quickultralitestudiolayersplugin.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
