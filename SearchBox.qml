import QtQuick
import QtQuick.Controls.Material

TextField {
    id: serchBox
    leftPadding: 50

    property string leftIconSource: ""
    property string rightIconSource: ""
    property Item leftIcon: icon1
    property Item rightIcon: icon2
    property Text placeholder: placeholder

    onTextChanged: {
        if(serchBox.text === "")
        {
            rowSearchedText.visible = false
            searchedText.text = ""

            models.foodListModel.clear()
            for (var i = 0; i < models.serchFoodListModel.count; i++) {
                var foodIndex = models.serchFoodListModel.get(i)
                var tempFoodName = foodIndex.foodName
                var tempFoodSource = foodIndex.imageSource
                var tempFoodPrice = foodIndex.foodPrice

                models.foodListModel.append({"foodName": tempFoodName, "imageSource":tempFoodSource,
                                              "foodPrice": tempFoodPrice})
            }

            models.desertsModel.clear()
            for (var j = 0; j < models.serchDesertListModel.count; j++) {
                var desertIndex = models.serchDesertListModel.get(j)
                var tempDesertName = desertIndex.desertName
                var tempDesertSource = desertIndex.imageSource
                var tempDesertPrice = desertIndex.desertPrice

                models.desertsModel.append({"desertName": tempDesertName, "imageSource":tempDesertSource,
                                              "desertPrice": tempDesertPrice})
            }
        }

        searchInListModel()
    }

    function searchInListModel() {

        if(serchBox.text === "")
            return

        foodCarts.foodShowAll = true
        rowSearchedText.visible = true

        var searchString = serchBox.text.toLowerCase()
        searchedText.text = serchBox.text

        models.foodListModel.clear()

        for (var i = 0; i < models.serchFoodListModel.count; i++) {
            var footIndex = models.serchFoodListModel.get(i)
            
            if (footIndex.foodName.toLowerCase().indexOf(searchString) !== -1) {
                var foodName = footIndex.foodName
                var foodSource = footIndex.imageSource
                var foodPrice = footIndex.foodPrice
                
                models.foodListModel.append({"foodName": foodName,
                        "imageSource": foodSource,foodPrice: foodPrice})
            }
        }

        models.desertsModel.clear()

        for (var j = 0; j < models.serchDesertListModel.count; j++) {

            var desertIndex = models.serchDesertListModel.get(j);

            if (desertIndex.desertName.toLowerCase().indexOf(searchString) !== -1) {
                var deserName = desertIndex.desertName
                var deserSource = desertIndex.imageSource
                var deserPrice = desertIndex.desertPrice

                models.desertsModel.append({"desertName": deserName,
                        "imageSource": deserSource,desertPrice: deserPrice})
            }
        }
    }

    IconImage {
        id: icon1
        source: leftIconSource

        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 18
    }

    IconImage {
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
            text: "Serch for Food"
            font.weight: 500
            color: "#646464"
            visible: serchBox.text.length === 0

            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 50
        }
    }
}
