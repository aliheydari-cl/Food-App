import QtQuick
import QtQuick.Controls.Material
import QtQuick.Effects
import QtQuick.Layouts

Page {
    width: window.width
    height: window.height

    Rectangle {
        width: parent.width
        height: parent.height / 3
        color: "#EC257C"

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
        radius: 20

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height / 2.9

        Label {
            id: signupLabel
            text: qsTr("Signup")
            font.pixelSize: 25
            font.weight: 650

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rect.top
            anchors.topMargin: 30
        }

        CustomTextField {
            id: nameTextField
            width: 255
            height: 45
            placeholder.text: "Name"
            leftIconSource: "images/userIcon.png"
            rightIcon.visible: false
            leftPadding: 50

            anchors.top: signupLabel.bottom
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomTextField {
            id: emailTextField
            width: 255
            height: 45
            placeholder.text: "Email"
            leftIconSource: "images/emailIcon.png"
            rightIcon.visible: false

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: nameTextField.bottom
            anchors.topMargin: 20
        }
        
        CustomTextField {
            id: passwordTextField
            width: 255
            height: 45
            placeholder.text: "Password"
            leftIconSource: "images/passwordIcon.png"
            rightIconSource: "images/eyeIcon.png"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: emailTextField.bottom
            anchors.topMargin: 20
        }
        
        Button {
            id: loginbutton
            width: 255
            height: 46

            anchors.top: passwordTextField.bottom
            anchors.topMargin: 31
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {

            }

            Text {
                text: qsTr("Create Account")
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
    }

    Text {
        id: text2
        text: qsTr("Already have an account?")
        font.pixelSize: 13

        anchors.top: rect.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 27
    }

    Text {
        id: signinText
        text: qsTr("Signin")
        color: "#EC257C"
        font.pixelSize: 13

        anchors.top: text2.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 11

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: signinText.color = "blue"
            onExited: signinText.color = "#EC257C"
            onClicked: loader.source = "Login.qml"
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

