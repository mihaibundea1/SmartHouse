import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/ui/BottomBar"
import "qrc:/ui/Formats"
import "qrc:/ui/PopUps"
import "qrc:/ui/Slider"
import "qrc:/ui/MainFrame"

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
            antialiasing: true

            RowLayout {
                id: firstRow
                width: 2000
                height: flickableFirstRow.height
                spacing: 20
                RoomObject{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "black"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "green"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "red"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "red"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "red"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "red"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "red"

                    color: "green"
                }
                Rectangle{
                    implicitWidth : 200
                    implicitHeight: 200
                    radius: 200
                    border.width: 1
                    border.color: "red"

                    color: "green"
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
