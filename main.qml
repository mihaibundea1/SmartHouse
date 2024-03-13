import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls

ApplicationWindow {
    width: 1280
    height: 720
    visible: true
    title: qsTr("SmartHouse")

    property real temperatureVal: 20.00

    Rectangle{
        id: blackRectangle
        width: parent.width
        height: parent.height / 8
        visible: true
        color: "black"

        anchors{
            bottom: parent.bottom
        }

        Row{
            spacing: parent.width/35
            width: parent.width
            anchors.bottom: parent.bottom
            anchors.verticalCenter: parent.verticalCenter
            Rectangle{
                id: arrowLeft
                width: parent.width/25
                height: parent.height
                color:"transparent"
                anchors.verticalCenter: parent.verticalCenter
                Image {
                    anchors.fill: parent
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
            }

            Rectangle{
                anchors.verticalCenter: parent.verticalCenter
                id: temperatureString
                width: parent.width/25
                height: parent.height
                color:"transparent"
                Text{
                    anchors.centerIn:parent
                    text:temperatureVal
                    font.family: "OpenSans"
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
            }

            Rectangle
            {
                id: arrow
                width: parent.width/25
                height: parent.height
                anchors.verticalCenter: parent.verticalCenter
                color:"transparent"
                Image {
                    anchors.fill: parent
                    height: blackRectangle.height
                    width: blackRectangle.height
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
