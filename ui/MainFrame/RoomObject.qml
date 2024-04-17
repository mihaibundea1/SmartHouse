import QtQuick 2.15
import QtQuick.Controls 2.12

Rectangle {
    implicitWidth: 200
    implicitHeight: 200
    color: "transparent"

    Image {
        anchors.centerIn: parent
        width: parent.width/2
        height: parent.height/2
        source: "qrc:/icons/HomeButton/HouseBlack.png"
    }

    Popup {
        id: popup
        width: 500
        height: 500
        modal: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        background: Image
        {
            source: "qrc:/icons/temperature/temperaturePopUp_400_500px.svg"
        }
        Rectangle {
            color: "grey"
            anchors.centerIn: parent
            Text {
                text: "This is a popup"
                anchors.centerIn: parent
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

    MouseArea {
        anchors.fill: parent
        onClicked: popup.open()
    }


}

