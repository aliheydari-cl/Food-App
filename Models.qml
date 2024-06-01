import QtQuick

Item {

    property var foodListModel: foodListModel
    property var singleFoodListModel: singleFoodListModel
    property var desertsModel: desertsModel
    property var serchFoodListModel: serchFoodListModel
    property var serchDesertListModel: serchDesertListModel

    ListModel {
        id: foodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger Burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll Paratha"
            foodPrice: "3"
        }

        ListElement {
            imageSource: "images/burger.png"
            foodName: "Burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/sandwich.png"
            foodName: "Sandwich"
            foodPrice: "3"
        }

        ListElement {
            imageSource: "images/pizzaRoll.png"
            foodName: "Pizza roll"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll Paratha"
            foodPrice: "3"
        }
    }

    ListModel {
        id: singleFoodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger Burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll Paratha"
            foodPrice: "3"
        }
    }

    ListModel {
        id: desertsModel

        ListElement {
            imageSource: "images/biscut.png"
            desertName: "Biscut"
            desertPrice: "1"

        }
        ListElement {
            imageSource: "images/cup.png"
            desertName: "Cup"
            desertPrice: "3"
        }
    }

    ListModel {
        id: serchDesertListModel

        ListElement {
            imageSource: "images/biscut.png"
            desertName: "Biscut"
            desertPrice: "1"

        }
        ListElement {
            imageSource: "images/cup.png"
            desertName: "Cup"
            desertPrice: "3"
        }
    }

    ListModel {
        id: serchFoodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger Burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll Paratha"
            foodPrice: "3"
        }

        ListElement {
            imageSource: "images/burger.png"
            foodName: "Burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/sandwich.png"
            foodName: "Sandwich"
            foodPrice: "3"
        }

        ListElement {
            imageSource: "images/pizzaRoll.png"
            foodName: "Pizza roll"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll Paratha"
            foodPrice: "3"
        }
    }
}
