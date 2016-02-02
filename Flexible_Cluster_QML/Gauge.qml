import QtQuick 2.0
import QtQuick.Extras 1.4


Item {
    width : 300
    height : width

Rectangle{
    anchors.fill: parent
    color : "Black"
    CircularGauge{
        anchors.fill: parent
        maximumValue : 260
        minimumValue: 0
        stepSize: 1

    }



}
}

