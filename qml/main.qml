import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello world")

    Component.onCompleted: content.replace("qrc:/dashboard.qml")

    Connections {
        target: mainCon
        function onGoDashboard() {
            content.replace("qrc:/dashboard.qml")
        }
        function onGoWorkspace() {
            content.replace("qrc:/workspace.qml")
        }
    }

    Rectangle{
        id: navigation
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#1F1F1F"

        Column {
            MyButton {
                id: btnDash
                imgSrc: "qrc:/dashboard.png"
                btnTxt: "Dashboard"
                onClicked: mainCon.goDashboard()
            }
            MyButton {
                id: btnWork
                btnTxt: "Workspace"
                imgSrc: "qrc:/workspace.png"
                onClicked: mainCon.goWorkspace()
            }
            MyButton {
                id: btnExit
                btnTxt: "Exit"
                imgSrc: "qrc:/exit.png"
                onClicked: mainCon.goExit()
            }
        }
    }

    StackView {
        id: content
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: navigation.right
        }
        initialItem: "qrc:/splash.qml"
        clip: true
    }
}
