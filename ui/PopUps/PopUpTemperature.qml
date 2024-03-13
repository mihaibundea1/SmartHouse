import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

Popup
{
    id: popUpTemperature
    x: blackRectangle.parent.x

    background: Image
    {
        source: "qrc:/icons/temperature/temperaturePopUp_400_500px.svg"

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
