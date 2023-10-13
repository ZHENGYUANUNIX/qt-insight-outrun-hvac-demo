# Qt Insigt + Outrun HVAC Demo
## Tested environment
- Host machine: Windows 11 host
- Qt Version Kit
  - Desktop Qt 6.5.3 MSVC2019 64-bit
  - Desktop Qt 6.5.3 MinGW 64-bit
  - Android Qt 6.5.3 Clang arm64-v8 (Debug build only tested)
    - Tested on Android Tablet (tangorpro)
- Dependent Modules
    - Qt::Core
    - Qt::Gui
    - Qt::Mqtt
    - Qt::Quick
    - Qt::Quick3D
    - Qt::QuickStudioEffects
      - If you use Android, you can use [prebuilt_designer_components/Debug/qqdc_Android-6.5.2-arm64v8a_Debug](prebuilt_designer_components/Debug/qqdc_ Android-6.5.2-arm64v8a_Debug) and paste the entire folders directly under Qt/6.5.3/android_arm64_v8a. This will make Qt::QuickStudioEffects available.
      - Similarly, if you want to use MinGW, please paste the file [prebuilt_designer_components/Debug/qqdc_MinGW-6.5.3_Debug](prebuilt_designer_components/Debug/qqdc_MinGW-6.5.3 _Debug) and paste the entire folders directly under Qt/6.5.3/mingw_64. Then you can use Qt::QuickStudioEffects.
      - Similarly, if you want to use MSVC, paste [prebuilt_designer_components/Debug/qqdc_MSVC2019-6.5.3_Debug](prebuilt_designer_components/Debug/qqdc_MSVC2019-6 .5.3_Debug) and paste the entire folders directly under Qt/6.5.3/msvc2019_64. Doing so will enable Qt::QuickStudioEffects.
    - Qt::InsightTracker


  
  ## How to use
  1. create an organization in Qt Insight. An evaluation version is available for free from the link [here](https://insight.qt.io/app). 
  2. install the above "Dependent Modules" with Maintenancetool. 
  3. issue a new token in the Tokens tab of Organization management in Qt Insight Web Console.
  ![issue a token](readme_assets/token.png)
  Paste the issued token as a value in the "token" area of the qtinsight.conf file in the respective folder under the [qtinsightconf](qtinsightconf) folder. Now the data can be sent to the cloud.
  ![fill token](readme_assets/fill_token.png)
  5. build and run the application with one of the kits listed in the Qt Version Kit. *As of October 2023, only debug builds are possible. For any other build, Qt::QuickStudioEffects must be built and installed with the corresponding build type, not the Debug build.
  ![build run](readme_assets/build_run.png)
  6. when you operate the launched application, a log of data storage and transmission will appear in the Application Output section of Qt Creator.
  ![log](readme_assets/log.png)
  7. a little later, the Qt Insight Web Console will reflect the data sent.
  ![web console](readme_assets/webconsole.png)
