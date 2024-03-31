import QtQuick 2.15
import QtQuick.Controls 2.12

Rectangle {
    implicitWidth: 200
    implicitHeight: 200
    radius: 200
    border.width: 1
    border.color: "black"
    color: "green"

    Popup {
        id: popup
        width: 200
        height: 200
        modal: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        Rectangle {
            color: "white"
            anchors.fill: parent
            Text {
                text: "This is a popup"
                anchors.centerIn: parent
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: popup.open()
    }
}

