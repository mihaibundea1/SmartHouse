import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("SmartHouse")

    Rectangle{
        id: blackRectangle
        width: parent.width
        height: parent.height / 7
        visible: true
        color: "black"

        anchors{
            bottom: parent.bottom
        }

        Row
        {
            spacing: 100
            anchors.bottom: parent
            Button
            {
                id:appsButton
                height: blackRectangle.height
                width: blackRectangle.width / 5


            }
        }
    }
}
