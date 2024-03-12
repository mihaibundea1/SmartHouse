import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("SmartHouse")

    Rectangle{
        id: blackRectangle
        width: parent.width
        height: parent.height / 5
        visible: true
                color: "white"

        anchors{
            bottom: parent.bottom
        }

        Column{
            anchors.left: parent.left
            anchors.leftMargin: 30
            Image {
                id: arrowUp
                height: blackRectangle.height/2
                width: blackRectangle.height/2
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/icons/temperature/arrowUp.ico"
            }

            Text{
                text:"20"
                font.family: "OpenSans"
                anchors.horizontalCenter: parent.horizontalCenter
                minimumPixelSize: 14
                font.pointSize: 18
                fontSizeMode: Text.Fit
                color: "black"
            }

            Image {
                id: arrowDown
                height: blackRectangle.height/2
                width: blackRectangle.height/2
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/icons/temperature/arrowDown.ico"
            }
        }
    }
}
