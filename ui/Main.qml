import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Effects
import QtQuick.Layouts
import Database 1.0

ApplicationWindow {
    width: 375
    height: 812
    visible: true
    title: qsTr("foodApp")
    id: window

    Database {
        id: database
    }

    Item {
        anchors.fill: parent

        Loader {
            id: loader
            source: "Description_1.qml"
            anchors.fill: parent
        }

        Rectangle {
            id: appFooter
            height: 60
            radius: 4
            color: "#EC257C"
            visible: false
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 15

            Footer {
                width: parent.widt

                anchors.fill: parent
                anchors.margins: 10
            }
        }
    }

    SequentialAnimation {
        id: anim

        PropertyAnimation {
            id: p1
            property: "scale"
            to: 1.1
            duration: 100
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation {
            id: p2
            property: "scale"
            to: 1.0
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }

    ListModel {
        id: foodListModel
    }

    ListModel {
        id: singleFoodListModel
    }
    ListModel {
        id: soupListModel;
    }
    ListModel {
        id: singleSoupListModel;
    }
    ListModel {
        id: dessertListModel
    }
    ListModel {
        id: singleDessertListModel
    }

    function populateModels(str, databaseFunction, fullListModel, singleItemListModel, itemCount) {
        fullListModel.clear()
        singleItemListModel.clear()

        if(str === "")
            databaseFunction();
        else
            databaseFunction(str);

        for (var i = 0; i < database.stringList.length; i += 4) {
            fullListModel.append({
                id: database.stringList[i],
                name: database.stringList[i + 1],
                price: database.stringList[i + 2],
                image: "data:image/png;base64," + database.stringList[i + 3]
            });
        }

        for (var j = 0; j < itemCount * 4 && itemCount !== 0; j += 4) {
            singleItemListModel.append({
                id: database.stringList[j],
                name: database.stringList[j + 1],
                price: database.stringList[j + 2],
                image: "data:image/png;base64," + database.stringList[j + 3]
            });
        }
    }

    Component.onCompleted: {
        populateModels("", database.getFoodDatabase, foodListModel, singleFoodListModel, 2);
        populateModels("", database.getSoupDatabase, soupListModel, singleSoupListModel, 2);
        populateModels("", database.getDessertDatabase, dessertListModel, singleDessertListModel, 2);
    }
}






