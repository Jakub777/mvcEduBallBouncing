import mvcEduBallDrop
import QtQuick

Item {
    id: root

    property var model

    width: model.radius * 2
    height: model.radius * 2

    x: model.x - model.radius
    y: model.y - model.radius

    Rectangle {
        anchors.fill: parent
        radius: width / 2
        color: "orange"
    }
}
