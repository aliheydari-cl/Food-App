import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    id: soupColumnLayout
    visible: soupListModel.count === 0 ? false : true

    anchors.horizontalCenter: parent.horizontalCenter

    property bool soupShowAll: false
    property var repeater: repeater

    RowLayout {
        width: parent.width

        Text {
            id: menuText
            text: qsTr("Popular Menu")
            font.weight: 550
        }

        Item {Layout.fillWidth: true}

        Rectangle {
            width: 60
            height: 50
            color: "transparent"

            Text {
                id: viewMoreText
                text: soupShowAll ? "Go Back" : "View More"
                font.pixelSize: 11
                color: "#646464"

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    soupShowAll ? soupShowAll = false : soupShowAll = true
                }
            }
        }
    }

    GridLayout {
        id: gridLayout
        columns: 2
        width: parent.width
        columnSpacing: 15
        rowSpacing: 15

        Repeater {
            id: repeater
            model: soupShowAll ? soupListModel : singleSoupListModel

            ColumnLayout {
                width: parent.width

                Rectangle {
                    width: 158
                    height: 140
                    color: "#FFEEDA"

                    Image {
                        id: soupImage
                        source: model.image

                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: soupNameText.top
                        anchors.bottomMargin: 10
                    }

                    Text {
                        id: soupNameText
                        text: model.name
                        font.weight: 590

                        anchors.bottom: soupPriceLabel.top
                        anchors.bottomMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Label {
                        id: soupPriceLabel
                        text: model.price + "$"
                        color: "#EC257C"
                        font.pixelSize: 16
                        font.weight: 600

                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            p1.target = soupImage
                            p2.target = soupImage
                            anim.start()
                        }
                    }
                }
            }
        }
    }
}
