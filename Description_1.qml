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
        source: "images/food2"
        sourceSize.width: 354
        sourceSize.height: 253
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 140
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
            text: qsTr("Track your Comfort <br> Food here")
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 29
            wrapMode: Text.Wrap
            font.weight: 550
        }

        Text {
            id: t2
            text: qsTr("Here You Can find achef or dish for every<br>taste and color. Enjoy!")
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
        anchors.bottomMargin: 49

        onClicked: {
            loader.source = "Description_2.qml"
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
