import QtQuick
import QtQuick.Controls.Material

TextField {
    id: serchBox
    leftPadding: 50

    property string leftIconSource: ""
    property string rightIconSource: ""
    property Item leftIcon: icon1
    property Item rightIcon: icon2
    property Text placeholder: placeholder


    IconImage {
        id: icon1
        source: leftIconSource

        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 18
    }

    IconImage {
        id: icon2
        source: rightIconSource

        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 16

        MouseArea {
            anchors.fill: parent
            onClicked:{
                p1.target = icon2
                p2.target = icon2
                anim.start()

            }
        }
    }

    background: Rectangle {
        radius: 30
        border.width: 0
        width: parent.width
        height: parent.height
        color: "#EDEDED"

        Text {
            id: placeholder
            text: "Serch for Food"
            font.weight: 500
            color: "#646464"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 50
            visible: serchBox.text.length === 0

        }
    }
}
