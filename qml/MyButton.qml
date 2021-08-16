import QtQuick 2.0
import qml.style 1.0

Rectangle {
    id: rect
    property alias imgSrc: icon.source
    property alias btnTxt: button.text

    property color colorEnter: Style.colorEnter
    property color colorExit: Style.colorExit

    width: 100
    height: 100

    signal clicked()

    Image {
        id: icon
        width: 60
        height: 60
        source: "qrc:/null.png"
        fillMode: Image.PreserveAspectFit
        clip: true
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 10
    }

    Text {
        id: button
        text: qsTr("button")
        anchors.top: icon.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: icon.horizontalCenter
        anchors.bottom: icon.bottom
        anchors.bottomMargin: 5
        font.bold: true
        font.pointSize: 12
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true

        onClicked: {
            parent.clicked()
        }

        onEntered: {
            color = colorEnter
        }

        onExited: {
            color = colorExit
        }
    }
}
