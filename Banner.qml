import QtQuick
import QtQuick.Controls.Material

Rectangle {
    width: parent.width
    height: 150
    radius: 4
    color: "#EC257C"

    anchors.horizontalCenter: parent.horizontalCenter

    Image {
        id: iceCreamImage
        source: "images/IceCream.png"

        anchors.right: parent.right
        anchors.rightMargin: 5
    }

    Text {
        id: text
        text: qsTr("Special Deal For <br> December")
        color: "white"
        font.pixelSize: 20
        font.weight: 600

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.leftMargin: 15
    }

    Rectangle {
        id: button
        width: 99
        height: 35
        radius: 4

        anchors.top: text.bottom
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.topMargin: 15

        Text {
            id: buttonText
            text: qsTr("Buy Now")
            color: "#EC257C"
            font.weight: 450

            anchors.centerIn: parent
        }
        
        MouseArea {
            anchors.fill: parent

            onClicked: {
                p1.target = button
                p2.target = button
                anim.start()
            }
        }
    }
}

