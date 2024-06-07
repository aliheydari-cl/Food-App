import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

Page {

    Item {
        width: parent.width * 0.89
        height: parent.height

        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: "Find Your <br> Favourite Food"
            font.pixelSize: 25
            font.weight: 650
        }

        RowLayout {
            id: row
            width: parent.width
            height: 54

            anchors.top: label.bottom
            anchors.topMargin: 26

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

            IconImage {
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

        Column {
            width: parent.width
            height: parent.height
            spacing: 20

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: row.bottom
            anchors.topMargin: 40

            ComboBox {
                id: combo1
                width: 315
                height: 45
                editable: false
                model: ["Type"]

                Rectangle {
                    width: 316
                    height: 45
                    color: "#EDEDED"
                    anchors.verticalCenter: parent.verticalCenter
                    radius: 5
                }
            }

            ComboBox {
                id: combo2
                width: 315
                height: 45
                editable: false
                model: ["Location"]

                Rectangle {
                    width: 316
                    height: 45
                    color: "#EDEDED"
                    anchors.verticalCenter: parent.verticalCenter
                    radius: 5
                }

                onAccepted: {

                }
            }

            ComboBox {
                id: combo3
                width: 315
                height: 45
                editable: false
                model: ["Food", "Cake", "Soup", "Appetizer", "Dessert"]

                Rectangle {
                    width: 316
                    height: 45
                    color: "#EDEDED"
                    anchors.verticalCenter: parent.verticalCenter
                    radius: 5
                }

                onAccepted: {

                }
            }
        }

        Button {
            id: searchButton
            width: 315
            height: 56
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                loader.source = "FoodAppMain.qml"
                appFooter.visible = "true"
            }

            Text {
                text: qsTr("Search")
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
}
