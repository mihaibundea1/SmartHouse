import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Item {
    id: imgContainer
//    width: sourceSize.width
//    height: sourceSize.height
    clip: imgContainer.imageOffsetY === 0
    property alias utilBox: childContainer
    property alias cache: internalImage.cache
    property alias source: internalImage.source
    property int imageOffsetY: 0

    SizeContainer
    {
        id: childContainer  //contains unutilized transparency dimensions, in procentage
    }

    Image {
        id: internalImage

        width: 100 * imgContainer.width / (100 - childContainer.t_left - childContainer.t_right);
        height: 100 * imgContainer.height / (100 - childContainer.t_top - childContainer.t_bottom);
        y: imgContainer.imageOffsetY - childContainer.t_top * height / 100
        x: -childContainer.t_left * width / 100
        fillMode: Image.Stretch
    }
    //Rectangle { anchors.fill: parent; color: "#00000000"; border.color: "red"; border.width: 1;}
}
