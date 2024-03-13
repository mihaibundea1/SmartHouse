import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

Popup
{
    property real backdropOpacity: .5

    id: popUpTemperature

//    modal: true
    dim: true
    focus: true
    background: Image
    {
        source: "qrc:/icons/temperature/temperaturePopUp_400_500px.svg"
    }

    Overlay.modeless: Rectangle {
        id: backdropDim
        color: "#33000000" //transparent dim
        anchors.fill: parent
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
