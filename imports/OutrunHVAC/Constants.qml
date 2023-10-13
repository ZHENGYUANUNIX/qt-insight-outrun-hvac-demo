pragma Singleton

import QtQuick

QtObject {
    readonly property int width: 1280
    readonly property int height: 720

    readonly property alias fontDirectory: fontLoaders.fontDirectory
    readonly property alias relativeFontDirectory: fontLoaders.relativeFontDirectory

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: Qt.application.font.family,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: Qt.application.font.family,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })

    readonly property color backgroundColor: "#c2c2c2"

    property ListModel fontFilesModel : ListModel {
        ListElement { filename: "OpenSans-Bold.ttf" }
        ListElement { filename: "OpenSans-ExtraBold.ttf" }
        ListElement { filename: "OpenSans-Regular.ttf" }
        ListElement { filename: "weather.ttf" }
    }

    property Instantiator fontLoaders : Instantiator{
        id: fontLoaders

        property url fontDirectory: Qt.resolvedUrl(relativeFontDirectory)
        property string relativeFontDirectory: "../../" + relativeFontDirectory

        model: fontFilesModel
        asynchronous: false
        Component{
            FontLoader{
                source:  Qt.resolvedUrl(fontDirectory + "/" + model.filename)
            }
        }
    }
}
