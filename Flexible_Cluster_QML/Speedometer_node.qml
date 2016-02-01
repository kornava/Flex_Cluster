import QtQuick 2.0

Item {
    id : speedometer_node
    property int speed: 0

    width : 300
    height : 300

        Rectangle {
            id : needle
            anchors.bottom: speedometer_node.Center
            anchors.horizontalCenter: speedometer_node.horizontalCenter
            transformOrigin: 1
            rotation :11

            height : speedometer_node.height/2
            width : 4
            color : "yellow"



        }



        Rectangle{
            id : speedometer_background
            anchors.fill: parent
            color : "lightgrey"
            opacity : 0.5
            radius:  200
        }

        Text {
            id : speed_text
            anchors.horizontalCenter : parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: speedometer_node.height/5
            font.pixelSize : speedometer_node.height/8
            text : speed
        }

        Text {
            anchors.top: speed_text.bottom
            anchors.horizontalCenter: speed_text.horizontalCenter
            font.pixelSize:  speed_text.font.pixelSize / 2
            text : "km/h"
        }



}

