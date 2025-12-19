import mvcEduBallDrop
import QtQuick

Item {
    id: root
    property var model

    width: model.width
    height: model.height

    Rectangle {
        anchors.fill: parent
        color: "#202020"
        border.color: "white"
    }

    BallView {
        model: root.model.ball
    }
}
