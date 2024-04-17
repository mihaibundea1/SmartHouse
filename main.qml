import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/ui/BottomBar"
import "qrc:/ui/Formats"
import "qrc:/ui/PopUps"
import "qrc:/ui/Slider"
import "qrc:/ui/MainFrame"

ApplicationWindow
{
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

        Flickable
        {
            id: flickableFirstRow
            width: parent.width
            height: columnLayout.height / 3
            contentWidth: firstRow.width
            contentHeight: height
            interactive: true
            clip: true
            antialiasing: true


            Row {
                id: firstRow
                width: 2000
                height: flickableFirstRow.height
                spacing: 5
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }

                ListModel {
                    id: firstRowList
                }

                Repeater {
                    model: firstRowList

                    delegate:
                        RoomObject{
                        anchors.verticalCenter: parent.verticalCenter
                        // trebuie sa fac aici o clasa de popup in folder-ul
                        // PopUps dedicata exclusiv pentru RoomObject astfel
                        // incat poate fi pozitionata la mijlocul MainWindow
                    }
                }

                AddNewRoom{
                    anchors.verticalCenter: parent.verticalCenter

                    MouseArea{
                        anchors.fill: parent

                        onClicked: {
                            firstRowList.insert(0, {"item": "item"});
                        }
                    }
                }
            }
        }
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
