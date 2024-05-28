import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    id: desertsColumnLayout
    spacing: 10

    property bool desersShowAll: false

    RowLayout {
        width: parent.width

        Text {
            id: menuText
            text: qsTr("Deserts")
            font.weight: 550
        }

        Item {Layout.fillWidth: true}

        Rectangle {
            width: 70
            height: 50
            color: "transparent"
            Text {
                id: viewMoreText
                text: desersShowAll ? "Go Back" : "View More"
                font.pixelSize: 11
                color: "#646464"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    desersShowAll ? desersShowAll = false : desersShowAll = true
                }
            }
        }
    }

    Repeater {
        id: repeater
        model: desertsModel
        width: parent.width

        RowLayout {

            id:delegate
            width: parent.width

            Rectangle {
                width: 158
                height: 140

                color: "#FFEEDA"

                Image {
                    id: desertImage
                    source: imageSource

                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: desertNameText.top
                    anchors.bottomMargin: 10
                }

                Text {
                    id: desertNameText
                    text: desertName
                    font.weight: 590

                    anchors.bottom: desertPriceLabel.top
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Label {
                    id:desertPriceLabel
                    text: desertPrice + "$"
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

            Item {
                width: 0
                Layout.fillWidth: true
            }

            Rectangle {
                width: 158
                height: 140
                color: "#FFEEDA"
                Image {
                    id: desertImage2
                    source: imageSource2
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: desertNameText2.top
                    anchors.bottomMargin: 10
                }

                Text {
                    id: desertNameText2
                    text: desertName2
                    font.weight: 590

                    anchors.bottom: desertPriceLabel2.top
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Label {
                    id:desertPriceLabel2
                    text: desertPrice2 + "$"
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
                        p1.target = desertImage2
                        p2.target = desertImage2
                        anim.start()
                    }
                }
            }
        }
    }
}


