import QtQuick 2.15

Rectangle {
    implicitHeight: 200
    implicitWidth: 200
    Image{
        width: parent.width/4
        height: parent.height/4
        anchors.centerIn: parent
        source: "qrc:/icons/MainFrameIco/addIcon.png"
    }

    MouseArea{
        anchors.fill: parent
//        onClicked: {
//            console.log("apasat adaugare camera");
//        }
    }
}
