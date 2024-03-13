import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

import "qrc:/ui/Slider"

Popup
{
    property real backdropOpacity: .5

    id: popUpTemperature
    dim: true
    focus: true
    width: mainWindow.width/3
    height: mainWindow.height/1.5
    background: Image
    {
        source: "qrc:/icons/temperature/temperaturePopUp_400_500px.svg"
    }

    Column
    {
        Rectangle{
            width: popUpTemperature.width
            height: popUpTemperature.height

            CircularSlider
            {
                anchors.verticalCenter: parent
                width: 200
                height: 200
                Image {
                    id: brightnessImage
                    anchors.centerIn: parent
                    source: "qrc:/icons/temperature/BrightnessImage.svg"
                }
            }
        }
    }

    Overlay.modeless: Rectangle {
        id: backdropDim
        color: "#33000000" //transparent dim
    }

    enter: Transition {
        NumberAnimation { property: "opacity"; from: 0.0; to: 1.0; duration: 100}
        PropertyAnimation {
            target: popUpTemperature
            properties: "scale"
            from: 1.0
            to: .99
            duration: 50
        }
        PropertyAnimation {
            target: popUpTemperature
            properties: "scale"
            from: .99
            to: 1.
            duration: 50
        }
    }
    exit: Transition {
        NumberAnimation { property: "opacity"; from: 1.; to: 0.; duration: 200}

        PropertyAnimation {
            target: popUpTemperature
            properties: "scale"
            from: 1.0
            to: 1.01
            duration: 200
        }
        PropertyAnimation {
            target: popUpTemperature
            properties: "scale"
            from: 1.01
            to: 0.99
            duration: 200
        }
    }
}
