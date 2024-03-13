import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

import "qrc:/ui/Slider"
import "qrc:/ui/BottomBar"

Popup
{
    id: popUpTemperature
    dim: true
    focus: true
    width: mainWindow.width/6
    height: mainWindow.height/3

    //    property alias temperature: bottomBar.temperatureVal

    background: Image
    {
        source: "qrc:/icons/temperature/temperaturePopUp_400_500px.svg"
    }

    Rectangle{
        id:degreeButtons
        color: "transparent"
        radius: 10
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        width: parent.width - parent.width/4
        height: parent.height - parent.height/3 - 3
        Rectangle{
            radius: 15
            id:celsiusRectangle
            width: parent.width
            height: parent.height/2 - 1
            anchors.top:parent.top
            color:"white"
            MouseArea{
                id:celsiusButton
                anchors.fill: parent
                onClicked:
                {
                    if(bottomBar.typeOfTemperature =="°F")
                    {
                        bottomBar.temperatureVal = Math.round((bottomBar.temperatureVal-32)/1.8 *100)/100
                        bottomBar.typeOfTemperature = "°C";
                    }
                }
            }

            Text {
                anchors.centerIn: parent
                text: "Celsius (°C)"
                font.family: "OpenSans"
                minimumPixelSize: 14
                font.pointSize: 14
                fontSizeMode: Text.Fit
                color: "black"
            }
        }
        Rectangle{
            id: fahrenheitRectangle
            width: parent.width
            height: parent.height/2 - 1
            anchors.bottom:parent.bottom
            color:"white"
            radius:10

            MouseArea{
                id: fahrenheitButton
                anchors.fill: parent
                onClicked:
                {
                    if(bottomBar.typeOfTemperature =="°C")
                    {
                        bottomBar.temperatureVal = Math.round((bottomBar.temperatureVal*1.8 +32)*100)/100   ;
                        bottomBar.typeOfTemperature = "°F";
                    }
                }
            }
            Text {
                anchors.centerIn: parent
                text: "Fahrenheit (°F)"
                font.family: "OpenSans"
                minimumPixelSize: 14
                font.pointSize: 14
                fontSizeMode: Text.Fit
                color: "black"
            }
        }
    }

    Rectangle
    {
        id: moreRectangle
        color: "white"
        radius: 15
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        width: parent.width
        height: parent.height - degreeButtons.height - 5

        Image
        {
            source: "qrc:/icons/temperature/arrowRightBlack.ico"
            width: parent.height
            height: parent.height
            anchors.right: parent.right
        }

        Text {
            anchors.centerIn: parent
            text: "More"
            font.family: "OpenSans"
            minimumPixelSize: 14
            font.pointSize: 14
            fontSizeMode: Text.Fit
            color: "black"

            MouseArea{
                id: moreButton
                anchors.fill: parent
                onClicked:
                {

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
