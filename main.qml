import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/ui/BottomBar"
import "qrc:/ui/Formats"
import "qrc:/ui/PopUps"
import "qrc:/ui/Slider"

ApplicationWindow {
    id: mainWindow
    width: 1280
    height: 720
    visible: true
    title: qsTr("SmartHouse")
    color:"white"


    Column
    {
        id: columnLayout
        width: parent.width
        height: parent.height - bottomBar.height
        anchors.leftMargin: parent.width / 30

        Flickable {
            id: flickableFirstRow
            width: parent.width
            height: columnLayout.height / 3
            contentWidth: firstRow.width
            contentHeight: height
            interactive: true
            clip: true

            RowLayout {
                id: firstRow
                width: parent.width
                height: flickableFirstRow.height
                spacing: 20
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200

                    color: "black"
                }
                CircularSlider{
                    implicitWidth : 200
                    implicitHeight: 200
                    progressColor: "green"
                    startAngle: 30
                    endAngle: 330
                    value: 0.5

                    handleRadius: 35
                    handleHeight: 35
                    handleWidth: 35

                    handleColor: "black"
                }
                CircularSlider{
                    implicitWidth : 200
                    implicitHeight: 200
                    progressColor: "orange"
                    startAngle: 30
                    endAngle: 330
                    value: 0.5

                    handleRadius: 35
                    handleHeight: 35
                    handleWidth: 35

                    handleColor: "black"
                }

            }
        }
        //        Flickable {
        //            id: flickableSecondRow
        //            width: parent.width
        //            height: columnLayout.height / 3
        //            contentWidth: flickableSecondRow.width
        //            contentHeight: height
        //            interactive: true
        //            clip: true
        //            RowLayout {
        //                id: secondRow
        //                width: flickableSecondRow.width
        //                height: flickableSecondRow.height
        //                spacing: parent.width/20
        //            }
        //        }

        Row {
            id: thirdRow
            Layout.fillWidth: true
            Layout.preferredHeight: columnLayout.height / 3
            spacing: width / 15
        }
    }

    BottomBar{
        id: bottomBar
    }

    PopUpTemperature{
        id: popUpTemperature
    }

}
