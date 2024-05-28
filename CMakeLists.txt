cmake_minimum_required(VERSION 3.16)

project(foodApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appfoodApp
    main.cpp
)

qt_add_qml_module(appfoodApp
    URI foodApp
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES Footer.qml FoodCarts.qml Banner.qml DesertsCarts.qml SerchBox.qml
        QML_FILES FoodAppMain.qml CustomTextField.qml Signup.qml Description_2.qml
        QML_FILES Login.qml Description_1.qml LoadingPage.qml AccountPage.qml

        RESOURCES images/food.png images/food2.png images/backFood2.png images/emailIcon.png
        RESOURCES images/logo2.png images/logo.png images/googleLogo.png images/food3.png
        RESOURCES images/userIcon.png images/passwordIcon.png images/eyeIcon.png
        RESOURCES images/serchIcon.png images/settingIcon.png images/notification.png
        RESOURCES images/shopIcon.png images/messageIcon.png images/homeIcon.png         
        RESOURCES images/user2Icon.png images/IceCream.png images/burger.png images/facebookLogo.png
        RESOURCES images/ZingerBurger.png images/sandwich.png images/rollParatha.png
        RESOURCES images/ZingerBurger.png images/cup.png images/biscut.png images/pizzaRoll.png
)

set_target_properties(appfoodApp PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appfoodApp
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appfoodApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
