import QtQuick
import QtQuick.Controls.Material
import QtQuick.Effects
import QtQuick.Layouts

Page {
    width: window.width
    height: window.height

    Rectangle {
        color: "#EC257C"
        width: parent.width
        height: parent.height / 3

        anchors.top: parent.top
    }

    Rectangle {
        width: parent.width + 300
        height: parent.height / 1.8
        color: "#EC257C"
        radius: width / 2

        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: logo2
        source: "qrc:/images/logo2.png"
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
        radius: 20

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height / 2.9

        Label {
            id: loginLabel
            text: qsTr("Login")
            font.pixelSize: 25
            font.weight: 650

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rect.top
            anchors.topMargin: 30
        }

        CustomTextField {
            id: t1
            width: 255
            height: 45
            leftPadding: 50

            placeholder.text: "example@gmail.com"
            leftIconSource: "qrc:/images/userIcon.png"
            rightIconSource: "qrc:/images/eyeIcon.png"
            rightIcon.visible: false

            anchors.top: loginLabel.bottom
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomTextField {
            id: emailTextField
            width: 255
            height: 45

            placeholder.text: "Password"
            leftIconSource: "qrc:/images/passwordIcon.png"
            rightIconSource: "qrc:/images/eyeIcon.png"

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
                onEntered: passwordText.color = "blue"
                onExited: passwordText.color = "black"

                anchors.fill: parent
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
            spacing: 13

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: loginbutton.bottom
            anchors.topMargin: 31

            Image {
                id: googleLogo
                source: "qrc:/images/googleLogo.png"

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
                source: "qrc:/images/facebookLogo.png"

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
        text: qsTr("Don't have an account?")
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
