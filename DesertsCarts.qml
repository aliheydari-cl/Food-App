import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    id: desertColumnLayout

    anchors.horizontalCenter: parent.horizontalCenter

    property bool desertShowAll: false

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
                text: desertShowAll ? "Go Back" : "View More"
                font.pixelSize: 11
                color: "#646464"

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
            }
            
            MouseArea {
                anchors.fill: parent

                onClicked: {
                    desertShowAll ? desertShowAll = false : desertShowAll = true
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
            model: models.desertsModel

            ColumnLayout {
                width: parent.width

                Rectangle {
                    width: 158
                    height: 140
                    color: "#FFEEDA"

                    Image {
                        id: desertImage

                        source: model.imageSource
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: desertNameText.top
                        anchors.bottomMargin: 10
                    }

                    Text {
                        id: desertNameText
                        text: model.desertName
                        font.weight: 590

                        anchors.bottom: desertPriceLabel.top
                        anchors.bottomMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Label {
                        id: desertPriceLabel
                        text: model.desertPrice + "$"
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
                            p1.target = desertImage
                            p2.target = desertImage
                            anim.start()
                        }
                    }
                }
            }
        }
    }
}
