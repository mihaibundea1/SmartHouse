import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls


Rectangle{
    property real temperatureVal: 20.00
    property var popup2

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
                        var popup1 = Qt.createComponent("qrc:/ui/PopUps/PopUpTemperature.qml");
                        popup2 = popup1.createObject(mainWindow, {"parent" : mainWindow});
                        popup2.leftMargin = mainWindow.width/30;
                        popup2.topMargin = mainWindow.height/20;
                        popup2.open();
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
