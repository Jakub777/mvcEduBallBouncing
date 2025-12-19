import QtQuick
import QtQuick.Window
import QtQuick.Controls.Fusion
import mvcEduBallDrop

Window {
    visible: true
    width: 900
    height: 500

    ListModel {
        id: worldsModel
    }

    Column {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Row {
            spacing: 10

            Button {
                text: "+"
                onClicked: {
                    worldsModel.append({})
                }
            }

            Button {
                text: "-"
                enabled: worldsModel.count > 0
                onClicked: {
                    worldsModel.remove(worldsModel.count - 1)
                }
            }
        }

        Row {
            spacing: 20

            Repeater {
                model: worldsModel

                delegate: Item {
                    width: 300
                    height: 300

                    WorldModel {
                        id: world
                    }

                    WorldView {
                        anchors.fill: parent
                        model: world
                    }
                }
            }
        }
    }
}
