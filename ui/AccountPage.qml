import QtQuick
import QtQuick.Controls.Material

Page {
    width: window.width
    height: window.height

    Text {
        id: name
        text: qsTr("Under Development")
        font.pixelSize: 27
        font.bold: true

        anchors.centerIn: parent
    }
}
