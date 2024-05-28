import QtQuick
import QtQuick.Controls.Material
import QtQuick.Effects
import QtQuick.Layouts

Page {
    width: window.width
    height: window.height

    Rectangle {
        anchors.top: parent.top
        width: parent.width
        height: parent.height / 3
        color: "#EC257C"
    }

    Rectangle {
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width + 300
        height: parent.height / 1.8
        color: "#EC257C"
        radius: width / 2
    }

    Image {
        id: logo2
        source: "images/logo2.png"
        sourceSize.width: 97
        sourceSize.height: 94
        anchors.bottom: text.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 17
    }

    Text {
        id:text
        text: qsTr("Deliver Favourite Food")
        color: "white"
        font.pixelSize: 21
        font.weight: 650
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: rect.top
        anchors.bottomMargin: 55
    }

    Rectangle {
        id: rect
        width: 300
        height: 398
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height / 2.9
        radius: 20

        Label {
            id: loginLabel
            text: qsTr("Login")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 25
            font.weight: 650
            anchors.top: rect.top
            anchors.topMargin: 30
        }

        CustomTextField {
            id: t1
            width: 255
            height: 45
            placeholder.text: "example@gmail.com"
            leftIconSource: "images/userIcon.png"
            rightIconSource: "images/eyeIcon.png"
            rightIcon.visible: false
            anchors.top: loginLabel.bottom
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
            leftPadding: 50
        }

        CustomTextField {
            id: emailTextField
            width: 255
            height: 45
            placeholder.text: "Password"
            leftIconSource: "images/passwordIcon.png"
            rightIconSource: "images/eyeIcon.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: t1.bottom
            anchors.topMargin: 20
        }

        Text {
            id: passwordText
            text: qsTr("Forget Password?")
            font.pixelSize: 12
            anchors.top: emailTextField.bottom
            anchors.topMargin: 10
            anchors.rightMargin: 22
            anchors.right: parent.right

            MouseArea {
                anchors.fill: parent
                onEntered: passwordText.color = "blue"
                onExited: passwordText.color = "black"
            }
        }

        Button {
            id: loginbutton
            width: 255
            height: 46
            anchors.top: passwordText.bottom
            anchors.topMargin: 31
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                loader.source = "FoodAppMain.qml"
                appFooter.visible = true
            }

            Text {
                text: qsTr("Login")
                color: "white"
                anchors.centerIn: parent
                font.weight: 670
                font.pixelSize: 17
            }

            background: Rectangle {
                radius: 4
                color: "#EC257C"
            }
        }

        Text {
            id: orText
            text: qsTr("Or")
            color: "#EC257C"
            font.pixelSize: 13
            anchors.top: loginbutton.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RowLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: loginbutton.bottom
            anchors.topMargin: 31
            spacing: 13

            Image {
                id: googleLogo
                source: "images/googleLogo.png"

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        p1.target = googleLogo
                        p2.target = googleLogo
                        anim.start()
                    }
                }
            }

            Image {
                id: facebookLogo
                source: "images/facebookLogo.png"

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        p1.target = facebookLogo
                        p2.target = facebookLogo
                        anim.start()
                    }
                }
            }
        }
    }

    Text {
        id: text2
        text: qsTr("Dont' have an accont?")
        font.pixelSize: 13
        anchors.top: rect.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 27
    }

    Text {
        id: registerText
        text: qsTr("REGISTER")
        color: "#EC257C"
        font.pixelSize: 13
        anchors.top: text2.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 11

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: registerText.color = "blue"
            onExited: registerText.color = "#EC257C"
            onClicked: loader.source = "Signup.qml"

        }
    }

    MultiEffect {
        source: rect
        anchors.fill: rect
        shadowBlur: .1
        shadowColor: 'black'
        shadowEnabled: true
    }
}
