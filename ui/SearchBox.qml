import QtQuick
import QtQuick.Controls.Material

TextField {
    id: searchBox
    leftPadding: 60
    property string leftIconSource: ""
    property string rightIconSource: ""
    property Item leftIcon: icon1
    property Item rightIcon: icon2
    property Text placeholder: placeholder

    onTextChanged: {
        if(searchBox.text === ""){
            foodListModel.clear()
            soupListModel.clear()
            dessertListModel.clear()

            populateModels("", database.getFoodDatabase, foodListModel, singleFoodListModel, 2);
            populateModels("", database.getSoupDatabase, soupListModel, singleSoupListModel, 2);
            populateModels("", database.getDessertDatabase, dessertListModel, singleDessertListModel, 2)

            rowSearchedText.visible = false

            banner.visible = true

            return
        }

        search()
    }

    function search() {
        banner.visible = false

        foodListModel.clear()
        soupListModel.clear()
        dessertListModel.clear()

        foodCarts.foodShowAll = true
        soupCarts.soupShowAll = true
        dessertsCarts.dessertShowAll = true

        rowSearchedText.visible = true
        searchedText.text = searchBox.text

        populateModels(searchBox.text, database.foodSearch, foodListModel, singleFoodListModel, 0);
        populateModels(searchBox.text, database.soupSearch, soupListModel, singleSoupListModel, 0);
        populateModels(searchBox.text, database.dessertSearch, dessertListModel, singleDessertListModel, 0);
    }

    Image {
        id: icon1
        source: leftIconSource

        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 18
    }

    Image {
        id: icon2
        source: rightIconSource

        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 16

        MouseArea {
            anchors.fill: parent

            onClicked:{
                loader.source = "SearchPage.qml"
                appFooter.visible = false
                p1.target = icon2
                p2.target = icon2
                anim.start()
            }
        }
    }

    background: Rectangle {
        radius: 30
        border.width: 0
        width: parent.width
        height: parent.height
        color: "#EDEDED"

        Text {
            id: placeholder
            text: "Search for Food"
            font.weight: 500
            color: "#646464"
            visible: searchBox.text.length === 0

            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 60
        }
    }
}
