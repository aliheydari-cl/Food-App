import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    id: dessertColumnLayout
    visible: dessertListModel.count === 0 ? false : true

    anchors.horizontalCenter: parent.horizontalCenter

    property bool dessertShowAll: false

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
                text: dessertShowAll ? "Go Back" : "View More"
                font.pixelSize: 11
                color: "#646464"

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
            }
            
            MouseArea {
                anchors.fill: parent

                onClicked: {
                    dessertShowAll ? dessertShowAll = false : dessertShowAll = true
                }
            }
        }
    }

    GridLayout {
        id: gridLayout
        width: parent.width

        columns: 2
        columnSpacing: 15
        rowSpacing: 15

        Repeater {
            id: repeater
            model: dessertShowAll ? dessertListModel : singleDessertListModel

            ColumnLayout {
                width: parent.width

                Rectangle {
                    width: 158
                    height: 140
                    color: "#FFEEDA"

                    Image {
                        id: dessertImage

                        source: model.image
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: dessertNameText.top
                        anchors.bottomMargin: 10
                    }

                    Text {
                        id: dessertNameText
                        text: model.name
                        font.weight: 590

                        anchors.bottom: dessertPriceLabel.top
                        anchors.bottomMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Label {
                        id: dessertPriceLabel
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
                            p1.target = dessertImage
                            p2.target = dessertImage
                            anim.start()
                        }
                    }
                }
            }
        }
    }
}
