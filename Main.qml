import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Effects
import QtQuick.Layouts

ApplicationWindow {
    width: 375
    height: 812
    visible: true
    title: qsTr("foodApp")
    id: window

    Item {
        anchors.fill: parent

        Loader {
            id: loader
            source: "Description_1.qml"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: appFooter.top
        }

        Rectangle {
            id: appFooter
            height: 60
            radius: 4
            color: "#EC257C"
            visible: false
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 15

            Footer {
                width: parent.width
                anchors.fill: parent
                anchors.margins: 10
            }
        }
    }

    SequentialAnimation {
        id: anim

        PropertyAnimation {
            id: p1
            property: "scale"
            to: 1.1
            duration: 100
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation {
            id: p2
            property: "scale"
            to: 1.0
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }

}
