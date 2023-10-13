import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Effects
import QtQuick3D.Particles3D
import QtQuick3D.Helpers
import OutrunHVAC 1.0
import Quick3DAssets.Car_HVAC 1.0
import Quick3DAssets.Seat_HVAC 1.0
import Quick3DAssets.Background_base_hvac 1.0
import Quick3DAssets.HandRest 1.0
import QtQuick.Timeline 1.0

Rectangle {
    property string pageval: "Climate"
    id: pageTabs
    width: 527
    height: 60
    color: "#00ffffff"
    border.color: "#00000000"

    Rectangle {
        id: bgPages
        x: 0
        y: 0
        width: 527
        height: 60
        opacity: 0.7
        visible: true
        color: globalDaymode ? "#FFFFFF" : "#000000"
        radius: 30
    }

    Rectangle {
        id: highlightPages
        y: 0
        width: 190
        height: 60
        opacity: 1
        visible: true
        color: globalDaymode ? "#989DCE" : "#10136A"
        radius: 30
    }

    Text {
        id: climateText
        text: qsTr("Climate")
        font.pixelSize: 20
        x: 82
        y: 16
        color: globalDaymode? "#5D5C60" : "#9A989C"
        font.bold: true
        font.styleName: "Regular"
        font.family: "Open Sans"
    }

    Text {
        id: seatsText
        x: 274
        y: 16
        color: globalDaymode? "#5D5C60" : "#9A989C"
        text: qsTr("Seats")
        font.pixelSize: 20
        font.bold: true
        font.family: "Open Sans"
        font.styleName: "Regular"
    }

    Text {
        id: audioText
        font.pixelSize: 20
        font.bold: true
        font.family: "Open Sans"
        font.styleName: "Regular"
        x: 441
        y: 16
        color: globalDaymode? "#5D5C60" : "#9A989C"
        text: qsTr("Audio")
    }

    Image {
        id: iconClimate
        x: 34
        y: 16
        source: "images/AC_28Day_off.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: iconAudio
        x: 390
        y: 16
        source: "images/Volumeup_28Day_off.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: iconSeat
        x: 227
        y: 16
        source: "images/ui/Seatdriverfilled_28_OFF.png"
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouseAreaClimate
        x: 0
        y: 0
        width: 195
        height: 60
        hoverEnabled: true
        onClicked: hvacmain.state = "Climate"
    }

    MouseArea {
        id: mouseAreaSeats
        x: 201
        y: 0
        width: 147
        height: 60
        onClicked: hvacmain.state = "Seats"
    }

    MouseArea {
        id: mouseAreaAudio
        x: 354
        y: 0
        width: 173
        height: 60
        onClicked: hvacmain.state = "Audio"
    }




    states: [
        State {
            name: "Climate"
            when: pageTabs.pageval == "Climate"

            PropertyChanges {
                target: climateText
                color: globalDaymode? "#1E1D20" : "#FFFFFF"
            }
            PropertyChanges {
                target: iconClimate
                source:globalDaymode? "images/AC_28Day_on.png" : "images/AC_28Night_on.png"
            }

        },
        State {
            name: "Seats"
            when: pageTabs.pageval == "Seats"
            PropertyChanges {
                target: seatsText
                color: globalDaymode? "#1E1D20" : "#FFFFFF"
            }
            PropertyChanges {
                target: highlightPages
                x: 188
                y: 0
                width: 166
                height: 60
            }

            PropertyChanges {
                target: iconSeat
                source:globalDaymode? "images/ui/Seatdriverfilled_28_ON_Day.png" : "images/ui/Seatdriverfilled_28_ON_Night.png"
            }
        },
        State {
            name: "Audio"
            when: pageTabs.pageval == "Audio"
            PropertyChanges {
                target: audioText
                color: globalDaymode? "#1E1D20" : "#FFFFFF"
            }
            PropertyChanges {
                target: highlightPages
                x: 354
                y: 0
                width: 173
                height: 60
            }
            PropertyChanges {
                target: iconAudio
                source:globalDaymode? "images/Volumeup_28Day_on.png" : "images/Volumeup_28Night_on.png"
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: highlightPages
                        property: "width"
                        duration: 150
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: highlightPages
                        property: "x"
                        duration: 150
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: highlightPages
                        property: "height"
                        duration: 150
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: highlightPages
                        property: "y"
                        duration: 150
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:60;width:527}D{i:7}D{i:8}
}
##^##*/

