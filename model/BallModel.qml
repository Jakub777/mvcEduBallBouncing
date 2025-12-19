import mvcEduBallDrop
import QtQuick

QtObject {
    id: ball

    property real x: 50
    property real y: 50
    property real vx: 120
    property real vy: 160
    property real radius: 8

    property real minX: 0
    property real minY: 0
    property real maxX: 300
    property real maxY: 300

    function update(dt) {
        x += vx * dt
        y += vy * dt

        if (x - radius < minX) {
            x = minX + radius
            vx = -vx
        }
        if (x + radius > maxX) {
            x = maxX - radius
            vx = -vx
        }
        if (y - radius < minY) {
            y = minY + radius
            vy = -vy
        }
        if (y + radius > maxY) {
            y = maxY - radius
            vy = -vy
        }
    }
}
