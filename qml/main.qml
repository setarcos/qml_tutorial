import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello world")

    Component.onCompleted: content.replace("qrc:dashboard.qml");

    StackView {
        id: content
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: parent.left
        }
        initialItem: "qrc:splash.qml"
    }
}
