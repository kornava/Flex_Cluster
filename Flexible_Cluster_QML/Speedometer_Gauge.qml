import QtQuick 2.0
import QtQuick.Extras 1.4


Item {
    id : speedometer_gauge
    width : 300
    height : width
    property int speed: 0

    Rectangle
    {
    id : speed_text_back
    color : "Black"
    opacity : 0.5
    width : parent.width/4
    height: width/1.2
    radius: 11

    anchors.horizontalCenter : parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    anchors.verticalCenterOffset: parent.height/6


    Text
    {
        id : speed_text
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.horizontalCenter:parent.horizontalCenter
        font.pixelSize : speedometer_gauge.height/7
        text : speed

    }

    Text
    {
        anchors.top : speed_text.bottom
        anchors.topMargin: -7
        anchors.horizontalCenter: speed_text.horizontalCenter

        font.pixelSize:  speed_text.font.pixelSize / 4
        text : "km/h"

    }
    }



    CircularGauge{
        anchors.fill: parent
        maximumValue : 260
        minimumValue: 0
        stepSize: 1
        value : speed
    }

}
