import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Effects

RowLayout {
    spacing: 45

    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    property Item currentRect: homePage
    property Item currentIcon: homePageIcon

    function selectPage(selectRect, selectIcon)
    {
        currentRect.color = "#EC257C"
        currentIcon.iconColor = "white"
        selectRect.color = "white"
        selectIcon.iconColor = "#EC257C"

        currentRect = selectRect
        currentIcon = selectIcon
    }

    Rectangle {
        id: homePage
        width: 40
        height: 40
        radius: 4

        Image {
            id: homePageIcon
            source: "qrc:/images/homeIcon.png"
            width: 30
            height: 30

            property color iconColor: "#EC257C"
            layer.enabled: true
            layer.effect: MultiEffect {
                colorization: 1.0
                colorizationColor: homePageIcon.iconColor
            }

            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                selectPage(homePage, homePageIcon)
                loader.source = "FoodAppMain.qml"
                p1.target = homePage
                p2.target = homePage
                anim.start()
            }
        }
    }

    Rectangle {
        id: accountPage
        width: 40
        height: 40
        radius: 4
        color: "#EC257C"


        Image {
            id: accountPageIcon
            source: "qrc:/images/user2Icon.png"
            property color iconColor: "white"
            layer.enabled: true
            layer.effect: MultiEffect {
                colorization: 1.0
                colorizationColor: accountPageIcon.iconColor
            }

            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                selectPage(accountPage, accountPageIcon)
                loader.source = "AccountPage.qml"
                p1.target = accountPage
                p2.target = accountPage
                anim.start()
            }
        }
    }

    Rectangle {
        id: shopPage
        width: 40
        height: 40
        radius: 4
        color: "#EC257C"


        Image {
            id: shopPageIcon
            source: "qrc:/images/shopIcon.png"
            property color iconColor: "white"
            layer.enabled: true
            layer.effect: MultiEffect {
                colorization: 1.0
                colorizationColor: shopPageIcon.iconColor
            }
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selectPage(shopPage, shopPageIcon)
                loader.source = "AccountPage.qml"
                p1.target = shopPage
                p2.target = shopPage
                anim.start()
            }
        }
    }

    Rectangle {
        id: messagePage
        width: 40
        height: 40
        radius: 4
        color: "#EC257C"

        Image {
            id: messagePageIcon
            source: "qrc:/images/messageIcon.png"
            property color iconColor: "white"
            layer.enabled: true
            layer.effect: MultiEffect{
                colorization: 1.0
                colorizationColor: messagePageIcon.iconColor
            }

            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                selectPage(messagePage, messagePageIcon)
                loader.source = "AccountPage.qml"
                p1.target = messagePage
                p2.target = messagePage
                anim.start()
            }
        }
    }
}

