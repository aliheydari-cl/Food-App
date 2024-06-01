import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    id: foodColumnLayout

    anchors.horizontalCenter: parent.horizontalCenter

    property bool foodShowAll: false
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
                text: foodShowAll ? "Go Back" : "View More"
                font.pixelSize: 11
                color: "#646464"

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
            }
            
            MouseArea {
                anchors.fill: parent

                onClicked: {
                    foodShowAll ? foodShowAll = false : foodShowAll = true
                    banner.visible ? banner.visible = false : banner.visible = true
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
            model: foodShowAll ? models.foodListModel : models.singleFoodListModel

            ColumnLayout {
                width: parent.width

                Rectangle {
                    width: 158
                    height: 140
                    color: "#FFEEDA"

                    Image {
                        id: foodImage
                        source: model.imageSource

                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: foodNameText.top
                        anchors.bottomMargin: 10
                    }

                    Text {
                        id: foodNameText
                        text: model.foodName
                        font.weight: 590

                        anchors.bottom: foodPriceLabel.top
                        anchors.bottomMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Label {
                        id: foodPriceLabel
                        text: model.foodPrice + "$"
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
                            p1.target = foodImage
                            p2.target = foodImage
                            anim.start()
                        }
                    }
                }
            }
        }
    }
}
