import QtQuick
import QtQuick.Controls.Material

TextField {
    id: textField

    leftPadding: 50

    property string leftIconSource: ""
    property string rightIconSource: ""
    property Item leftIcon: icon1
    property Item rightIcon: icon2
    property Text placeholder: placeholder

    Rectangle {
        width: parent.width
        height: parent.height
        color: "transparent"
        visible: textField.text.length === 0

        Text {
            id: placeholder
            color: "gray"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 50
        }
    }

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
                if(textField.echoMode === TextInput.Password)
                    textField.echoMode = TextInput.Normal
                else
                    textField.echoMode = TextInput.Password
            }
        }
    }
}

