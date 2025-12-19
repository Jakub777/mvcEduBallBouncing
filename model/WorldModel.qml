import mvcEduBallDrop
import QtQuick

QtObject {
    id: world

    property real width: 300
    property real height: 300

    property var ball: BallModel {
        minX: 0
        minY: 0
        maxX: world.width
        maxY: world.height
    }

    property Timer ticker: Timer {
        interval: 16
        running: true
        repeat: true
        onTriggered: {
            world.ball.update(interval / 1000.0)
        }
    }
}
