import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

Page {
    id: page

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

                SearchBox {
                    id: serchBox
                    width: 263
                    height: 54

                    leftIconSource: "qrc:/images/serchIcon.png"
                    rightIconSource: "qrc:/images/settingIcon.png"

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Item {
                    Layout.fillWidth: true
                }

                Image {
                    id: notificationIcon
                    source: "qrc:/images/notification"

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

            Row {
                visible: false
                id: rowSearchedText
                width: parent.width
                height: 44
                spacing: 5

                Rectangle {
                    id: rectSearchedText
                    width: 110
                    height: parent.height
                    color: "#FFEEDA"

                    RowLayout {
                        anchors.centerIn: parent

                        Text {
                            id: searchedText
                            text: qsTr("test")
                            color: "#646464"
                            font.pixelSize: 16
                            font.weight: 600
                        }

                        Item {
                            width: 25
                            height: 25

                            Image {
                                source: "qrc:/images/x.png"
                                //color: "#646464"
                                sourceSize.width: 15
                                anchors.fill: parent
                                anchors.topMargin: 4
                            }

                            MouseArea {
                                anchors.fill: parent

                                onClicked: {
                                    serchBox.text = ""
                                }
                            }
                        }
                    }
                }                
            }

            FoodCarts {
                id: foodCarts
                width: parent.width
            }

            SoupCarts {
                id: soupCarts
                width: parent.width
            }

            DessertsCarts {
                id: dessertsCarts
                width: parent.width
            }
        }
    }

    Models {
        id: models
        visible: false
    }
}
