import QtQuick
import QtQuick.Controls.Material

Page {
    id: page
    width: window.width
    height: window.height

    Rectangle {
        anchors.fill: parent
        color: "#E0B1C0"
        opacity: 0.4
    }

    Image {
        id: logoImage
        source: "images/logo.png"
        anchors.centerIn: parent

        sourceSize.width: 130
        sourceSize.height: 127
    }

    Image {
        id: foodImage
        source: "images/food.png"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }
}
