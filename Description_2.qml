import QtQuick
import QtQuick.Controls.Material

Page {
    width: window.width
    height: window.height

    Image {
        id: backfood
        source: "images/backFood2.png"
        sourceSize.width: 408
        sourceSize.height: 434
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 66
    }

    Image {
        id: food
        source: "images/food3"
        sourceSize.width: 354
        sourceSize.height: 253
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 150
    }

    Item {
        id:textItem
        width: 252
        height: 113
        anchors.topMargin: 38
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: backfood.bottom

        Text {
            id: t1
            text: qsTr("Foodie is Where Your <br> Comfort food Resides")
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 25
            wrapMode: Text.Wrap
            font.weight: 550
        }

        Text {
            id: t2
            text: qsTr("Enjoy a fast and smooth food delivery at <br> your doorstep")
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 12
            font.weight: 300
            color: "#787878"
            horizontalAlignment: Text.AlignHCenter
            anchors.top: t1.bottom
            anchors.topMargin: 15
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Button {
        width: 158
        height: 50
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: -26

        onClicked: {
            loader.source = "Login.qml"
        }

        Text {
            text: qsTr("Next")
            color: "white"
            anchors.centerIn: parent
            font.weight: 670
        }

        background: Rectangle {
            radius: 4
            color: "#EC257C"
        }
    }
}
