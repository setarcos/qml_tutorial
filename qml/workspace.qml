import QtQuick 2.9
import qml.style 1.0

Item {
    Rectangle {
        anchors.fill: parent
        color: Style.colorBg
        Text {
            anchors.centerIn: parent
            font.pixelSize: Style.textSize
            color: "#008000"
            text: "Workspace"
        }
    }
}
