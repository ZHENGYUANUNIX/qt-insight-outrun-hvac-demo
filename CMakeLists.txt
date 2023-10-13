# Generated from OutrunHVAC.pro.

cmake_minimum_required(VERSION 3.16)
project(OutrunHVAC LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

if(NOT DEFINED INSTALL_EXAMPLESDIR)
    set(INSTALL_EXAMPLESDIR "examples")
endif()

set(INSTALL_EXAMPLEDIR "${INSTALL_EXAMPLESDIR}")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Quick)
find_package(Qt6 COMPONENTS Quick3D)
find_package(Qt6 COMPONENTS Mqtt)
find_package(Qt6 COMPONENTS InterfaceFramework)
find_package(Qt6 COMPONENTS IfAndroidVehicleProperties)
# studio componentのビルドとインストールが必要(https://doc.qt.io/qtdesignstudio/quick-converting-ui-projects.html#adding-qt-quick-designer-components-to-qt-installations)
find_package(Qt6 COMPONENTS QuickStudioEffects)
find_package(Qt6 COMPONENTS InsightTracker)

qt_add_executable(OutrunHVAC WIN32 MACOSX_BUNDLE
    main.cpp
)

# https://github.com/KDAB/android_openssl
if (ANDROID)
    include(android_openssl/android_openssl.cmake)
    add_android_openssl_libraries(OutrunHVAC)
endif()

target_link_libraries(OutrunHVAC PUBLIC
    Qt::Core
    Qt::Gui
    Qt::Mqtt
    Qt::Quick
    Qt::Quick3D
    Qt::QuickStudioEffects
    Qt::InsightTracker
)

if (Qt6InterfaceFramework_FOUND AND Qt6IfAndroidVehicleProperties_FOUND)
    target_link_libraries(OutrunHVAC PUBLIC
        Qt::InterfaceFramework
        Qt::IfAndroidVehicleProperties
    )
endif()


# Resources:
qt6_add_big_resources(hvac OutrunHVAC.qrc)
target_sources(OutrunHVAC PRIVATE ${hvac})

# change the qtinsight.conf based on the target
if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    # Using MSVC
    set(QTINSIGHT_CONFIG_FILE "qtinsightconf/MSVC/qtinsight.conf")
    set(QT_INSIGHT_PREFIX "MSVC")
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    # Using GCC (MinGW)
    set(QTINSIGHT_CONFIG_FILE "qtinsightconf/MinGW/qtinsight.conf")
    set(QT_INSIGHT_PREFIX "MinGW")
elseif (ANDROID)
    # Using Android NDK
    set(QTINSIGHT_CONFIG_FILE "qtinsightconf/Android_arm64_v8a/qtinsight.conf")
    set(QT_INSIGHT_PREFIX "Android_arm64_v8a")
else()
    # Default path
    set(QTINSIGHT_CONFIG_FILE "qtinsightconf/Default/qtinsight.conf")
    set(QT_INSIGHT_PREFIX "Default")
endif()


qt6_add_resources(
    OutrunHVAC "config"
    BASE
        "qtinsightconf/${QT_INSIGHT_PREFIX}"
    FILES
        ${QTINSIGHT_CONFIG_FILE}
)

set(qml_resource_files
    "asset_imports/Quick3DAssets/Seat_HVAC/Seat_HVAC.qml"
    "Hvackparticle.ui.qml"
    "imports/OutrunHVAC/Constants.qml"
    "MyAudioPointsControl.ui.qml"
    "MyControlBar.ui.qml"
    "MyParticle_center_control.ui.qml"
    "MyParticle_check_control.ui.qml"
    "MySeatControls.ui.qml"
    "MyVentControls.ui.qml"
    "ParticlesControl_side.ui.qml"
    "Screen01.ui.qml"
    "Untitled/AC.ui.qml"
    "OutrunHVAC.qml"
    "main.qml"
    "MyCustomCheckbox.ui.qml"
    "MyDigiWave.ui.qml"
    "MySeatReclineArc.ui.qml"
    "asset_imports/Quick3DAssets/CombinedSeat/CombinedSeat.qml"
    "asset_imports/Quick3DAssets/CombinedSeat_Heat/CombinedSeat_Heat.qml"
    "asset_imports/Quick3DAssets/Seat_HVAC/MyNewSeat_baseColor.qml"
    "MyDragPopup.ui.qml"
    "MqttConnector.qml"
    "AndroidAutomotiveBindings.qml"
    "imports/OutrunHVAC/DData.qml"
    "asset_imports/Quick3DAssets/SUV_Outrun_CutRoof1/SUV_Outrun_CutRoof1.qml"
    "MyDemoModeButton.ui.qml"
    "MyArcTickmarks.ui.qml"
    "SoundSystemVisual.qml"
    "TopButtonBar.qml"
    "LocaleData.qml"
    "asset_imports/Quick3DAssets/SUV_Knobs/SUV_Knobs.qml"
)

qt6_add_resources(OutrunHVAC "qml"
    PREFIX
    "/"
    FILES
    ${qml_resource_files}
)

set_target_properties(OutrunHVAC PROPERTIES
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
)

install(TARGETS OutrunHVAC
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)
