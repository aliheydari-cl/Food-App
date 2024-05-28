import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

RowLayout {
    spacing: 45

    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter


    property Item currentRect: homePage
    property Item currentIcon: homePageIcon

    function selectPage(selectRect, selectIcon)
    {
        currentRect.color = "#EC257C"
        currentIcon.color = "white"
        selectRect.color = "white"
        selectIcon.color = "#EC257C"
        currentRect = selectRect
        currentIcon = selectIcon
    }

    Rectangle {
        id: homePage
        width: 40
        height: 40
        radius: 4

        IconImage {
            id: homePageIcon
            source: "images/homeIcon.png"
            color: "#EC257C"
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

        IconImage {
            id: accountPageIcon
            source: "images/user2Icon.png"
            color: "white"
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

        IconImage {
            id: shopPageIcon
            source: "images/shopIcon.png"
            color: "white"
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

        IconImage {
            id: messagePageIcon
            source: "images/messageIcon.png"
            color: "white"
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

