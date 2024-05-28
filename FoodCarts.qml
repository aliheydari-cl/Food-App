import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    id: foodColumnLayout
    spacing: 10

    property bool foodShowAll: false

    RowLayout {
        width: parent.width

        Text {
            id: menuText
            text: qsTr("Popular Menu")
            font.weight: 550
        }

        Item {Layout.fillWidth: true}

        Rectangle {
            width: 70
            height: 50
            color: "transparent"
            Text {
                id: viewMoreText
                text: foodShowAll ? "Go Back" : "View More"
                font.pixelSize: 11
                color: "#646464"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    foodShowAll ? foodShowAll = false : foodShowAll = true
                }
            }
        }
    }

    Repeater {
        id: repeater
        model: foodShowAll ? foodListModel : singleFoodListModel
        width: parent.width

        RowLayout {

            id:delegate
            width: parent.width

            Rectangle {
                width: 158
                height: 140

                color: "#FFEEDA"

                Image {
                    id: foodImage
                    source: imageSource

                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: foodNameText.top
                    anchors.bottomMargin: 10
                }

                Text {
                    id: foodNameText
                    text: foodName
                    font.weight: 590

                    anchors.bottom: foodPriceLabel.top
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Label {
                    id:foodPriceLabel
                    text: foodPrice + "$"
                    color: "#EC257C"
                    font.pixelSize: 16
                    font.weight: 600

                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                        p1.target = foodImage
                        p2.target = foodImage
                        anim.start()

                    }
                }


            }

            Item {
                width: 0
                Layout.fillWidth: true
            }

            Rectangle {
                width: 158
                height: 140
                color: "#FFEEDA"
                Image {
                    id: foodImage2
                    source: imageSource2
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: foodNameText2.top
                    anchors.bottomMargin: 10
                }

                Text {
                    id: foodNameText2
                    text: foodName2
                    font.weight: 590

                    anchors.bottom: foodPriceLabel2.top
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Label {
                    id:foodPriceLabel2
                    text: foodPrice2 + "$"
                    color: "#EC257C"
                    font.pixelSize: 16
                    font.weight: 600

                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                        p1.target = foodImage2
                        p2.target = foodImage2
                        anim.start()

                    }
                }
            }
        }
    }
}


