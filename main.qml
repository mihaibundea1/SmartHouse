import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("SmartHouse")

    property real temperatureVal: 20.00

    Rectangle{
        id: blackRectangle
        width: parent.width
        height: parent.height / 6
        visible: true
        color: "black"

        anchors{
            bottom: parent.bottom
        }

        Row{
            anchors.bottom: parent.bottom
            anchors.verticalCenter: parent.verticalCenter
            Image {
                id: arrowLeft
                height: blackRectangle.height
                width: blackRectangle.height
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/icons/temperature/arrowLeftWhite.ico"
                MouseArea
                {
                    anchors.fill: parent;
                    onClicked: {
                        temperatureVal = temperatureVal - 0.5;
                        console.log("apasat");
                    }
                }
            }

            Text{
                id: temperatureString
                text:temperatureVal
                font.family: "OpenSans"
                anchors.verticalCenter: parent.verticalCenter
                minimumPixelSize: 18
                font.pointSize: 20
                fontSizeMode: Text.Fit
                color: "white"
                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        var popup1 = popUpTemperature;
                        popup1.open();
                    }
                }
            }

            Image {
                id: arrow
                height: blackRectangle.height
                width: blackRectangle.height
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/icons/temperature/arrowRightWhite.ico"
                MouseArea
                {
                    anchors.fill: parent
                    onClicked: {
                        temperatureVal = temperatureVal+ 0.5
                    }
                }
            }
        }
    }

    Popup
    {
        id: popUpTemperature
        x: parent.x + parent.width/10
        y: parent.y + parent.height/10
        width: parent.width/3
        height: parent.height/2
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside
        BorderImage {
            id: name
            source: "qrc:/icons/temperature/arrowDown.ico"
            width: 100; height: 100
            border.left: 5; border.top: 5
            border.right: 5; border.bottom: 5
        }
        Rectangle
        {
            anchors.fill: parent
            color:"black"
            radius: 10
        }

    }

}
