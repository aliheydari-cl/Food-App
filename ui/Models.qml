import QtQuick

Item {

    property var foodListModel: foodListModel
    property var singleFoodListModel: singleFoodListModel
    property var dessertsModel: dessertsModel
    property var serchFoodListModel: serchFoodListModel
    property var serchDessertListModel: serchDessertListModel
    property var soupListModel: soupListModel
    property var searchSoupListModel: searchSoupListModel
    property var singleSoupListModel: singleSoupListModel


    ListModel {
        id: foodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll paratha"
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
            imageSource: "images/beefBurger.png"
            foodName: "Beef burger"
            foodPrice: "3"
        }
    }

    ListModel {
        id: singleFoodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll paratha"
            foodPrice: "3"
        }
    }

    ListModel {
        id: serchFoodListModel

        ListElement {
            imageSource: "images/ZingerBurger.png"
            foodName: "Zinger burger"
            foodPrice: "2"
        }

        ListElement {
            imageSource: "images/rollParatha.png"
            foodName: "Roll paratha"
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
            imageSource: "images/beefBurger.png"
            foodName: "Beef burger"
            foodPrice: "3"
        }
    }

    ListModel {
        id: dessertsModel

        ListElement {
            imageSource: "images/biscut.png"
            dessertName: "Biscut"
            dessertPrice: "1"

        }
        ListElement {
            imageSource: "images/cup.png"
            dessertName: "Cup"
            dessertPrice: "3"
        }
    }

    ListModel {
        id: serchDessertListModel

        ListElement {
            imageSource: "images/biscut.png"
            dessertName: "Biscut"
            dessertPrice: "1"

        }
        ListElement {
            imageSource: "images/cup.png"
            dessertName: "Cup"
            dessertPrice: "3"
        }
    }

    ListModel {
        id: soupListModel

        ListElement {
            imageSource: "images/tomattoSoup.png"
            soupName: "Tomatto Soup"
            soupPrice: "2"
        }

        ListElement {
            imageSource: "images/carrotSoup.png"
            soupName: "Carrot soup"
            soupPrice: "3"
        }

        ListElement {
            imageSource: "images/mashroomSoup.png"
            soupName: "Mashroom soup"
            soupPrice: "3"
        }

        ListElement {
            imageSource: "images/missoSoup.png"
            soupName: "Misso soup"
            soupPrice: "2"
        }
    }
    ListModel {
        id: searchSoupListModel

        ListElement {
            imageSource: "images/tomattoSoup.png"
            soupName: "Tomatto Soup"
            soupPrice: "2"
        }

        ListElement {
            imageSource: "images/carrotSoup.png"
            soupName: "Carrot soup"
            soupPrice: "3"
        }

        ListElement {
            imageSource: "images/mashroomSoup.png"
            soupName: "Mashroom soup"
            soupPrice: "3"
        }

        ListElement {
            imageSource: "images/missoSoup.png"
            soupName: "Misso soup"
            soupPrice: "2"
        }
    }

    ListModel {
        id: singleSoupListModel

        ListElement {
            imageSource: "images/tomattoSoup.png"
            soupName: "Tomatto Soup"
            soupPrice: "2"
        }

        ListElement {
            imageSource: "images/carrotSoup.png"
            soupName: "Carrot soup"
            soupPrice: "3"
        }
    }
}
