import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

Page {
    id: page
    width: window.width
    height: window.height

    Flickable {
        id: flickable
        width: parent.width * 0.89
        height: parent.height
        clip: true
        contentHeight: column.height + 95
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            width: parent.width
            spacing: 26
            anchors.top: parent.top
            anchors.topMargin: 15


            Label {
                id: label1
                text: qsTr("Find Your <br> Favourite Food")
                font.pixelSize: 25
                font.weight: 650
            }

            RowLayout {
                width: parent.width
                height: 54

                SerchBox {
                    id: serchBox
                    width: 263
                    height: 54
                    leftIconSource: "images/serchIcon.png"
                    rightIconSource: "images/settingIcon.png"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Item {
                    Layout.fillWidth: true
                }

                IconImage {
                    id: notificationIcon
                    source: "images/notification"
                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            p1.target = notificationIcon
                            p2.target = notificationIcon
                            anim.start()
                        }
                    }
                }
            }

            Banner {
                id: banner
            }

            FoodCarts {
                id: foodCarts
                anchors.left: parent.left
                anchors.right: parent.right
            }

            DesertsCarts {
                id: desertsCarts
                anchors.left: parent.left
                anchors.right: parent.right

            }

        }
    }

    ListModel {
        id: foodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger Burger"
            foodPrice: "2"

            imageSource2: "images/rollParatha.png"
            foodName2: "Roll Paratha"
            foodPrice2: "3"
        }
        ListElement {
            imageSource: "images/burger.png"
            foodName: "Burger"
            foodPrice: "2"

            imageSource2: "images/sandwich.png"
            foodName2: "Sandwich"
            foodPrice2: "3"
        }
        ListElement {
            imageSource: "images/pizzaRoll.png"
            foodName: "Pizza roll"
            foodPrice: "2"

            imageSource2: "images/rollParatha.png"
            foodName2: "Roll Paratha"
            foodPrice2: "3"
        }
    }
    ListModel {
        id: singleFoodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger Burger"
            foodPrice: "2"

            imageSource2: "images/rollParatha.png"
            foodName2: "Roll Paratha"
            foodPrice2: "3"
        }
    }

    ListModel {
        id: desertsModel

        ListElement {
            imageSource: "images/biscut.png"
            desertName: "Biscut"
            desertPrice: "1"

            imageSource2: "images/cup.png"
            desertName2: "Cup"
            desertPrice2: "3"
        }
    }
}
