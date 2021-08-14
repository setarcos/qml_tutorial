import QtQuick 2.9

Item {
    Rectangle {
        anchors.fill: parent
        color: "#ffffff"
        Text {
            anchors.centerIn: parent
            font.pixelSize: 44
            color: "#008000"
            text: mainCon.ui_welcomeMsg
        }
    }
}
