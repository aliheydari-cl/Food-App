#include "database.h"
#include <QtCore>
#include <QFile>

Database::Database(QObject *parent)
    : QObject{parent}
{
    createDatabase();
}

void Database::createDatabase()
{
    QString fileName;

    #if defined(Q_OS_ANDROID)
        fileName = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    #else
        fileName = QCoreApplication::applicationDirPath();
    #endif

    db.setDatabaseName(fileName + "/foodApp.db");

    db.open();

    QSqlQuery q;

    q.exec("DROP TABLE IF EXISTS food");
    q.exec("DROP TABLE IF EXISTS soup");
    q.exec("DROP TABLE IF EXISTS dessert");

    q.exec("CREATE TABLE food (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, image BLOB)");

    q.exec("CREATE TABLE soup (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, image BLOB)");

    q.exec("CREATE TABLE dessert (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, image BLOB)");


    databaseInitialization("food", "1", "Zinger burger", "2", ":/images/ZingerBurger.png");
    databaseInitialization("food", "2", "Roll paratha", "3", ":/images/rollParatha.png");
    databaseInitialization("food", "3", "Burger", "2", ":/images/burger.png");
    databaseInitialization("food", "4", "Sandwich", "3", ":/images/sandwich.png");
    databaseInitialization("food", "5", "Pizza roll", "2", ":/images/pizzaRoll.png");
    databaseInitialization("food", "6", "Beef burger", "3", ":/images/beefBurger.png");

    databaseInitialization("soup", "1", "Tomatto soup", "2", ":/images/tomattoSoup.png");
    databaseInitialization("soup", "2", "Carrot soup", "3", ":/images/carrotSoup.png");
    databaseInitialization("soup", "3", "Mashroom soup", "3", ":/images/mashroomSoup.png");
    databaseInitialization("soup", "4", "Misso soup", "2", ":/images/missoSoup.png");

    databaseInitialization("dessert", "1", "Biscut", "1", ":/images/biscut.png");
    databaseInitialization("dessert", "2", "Cup", "3", ":/images/cup.png");
}

void Database::databaseInitialization(QString tableName, QString id, QString name, QString price, QString imagePath)
{
    QByteArray imageData;

    QFile file(imagePath);

    if (!file.open(QIODevice::ReadOnly)) {
        qDebug() << "Cannot open file:" << imagePath;
        return;
    }

    imageData = file.readAll();

    file.close();

    QString queryStr = QString("INSERT INTO %1 (id, name, price, image) VALUES (:id, :name, :price, :image)").arg(tableName);
    QSqlQuery q;
    q.prepare(queryStr);
    q.bindValue(":id", id);
    q.bindValue(":name", name);
    q.bindValue(":price", price);
    q.bindValue(":image", imageData);

    q.exec();
}

QStringList Database::getStringList() const
{
    return stringList;
}

void Database::setStringList(const QStringList &newStringList)
{
    if(stringList != newStringList){
        stringList = newStringList;
        emit stringListChanged();
    }
}

void Database::getFoodDatabase()
{
    QSqlQuery q;
    q.exec("SELECT id, name, price, image FROM food");

    stringList.clear();


    while (q.next()) {
        QString id = q.value(0).toString();
        QString name = q.value(1).toString();
        QString price = q.value(2).toString();
        QByteArray image = q.value(3).toByteArray();

        stringList.append(id);
        stringList.append(name);
        stringList.append(price);
        stringList.append(QString(image.toBase64()));
    }
    emit stringListChanged();
}

void Database::getSoupDatabase()
{
    QSqlQuery q;
    q.exec("SELECT id, name, price, image FROM Soup");

    stringList.clear();

    while (q.next()) {

        QString id = q.value(0).toString();
        QString name = q.value(1).toString();
        QString price = q.value(2).toString();
        QByteArray image = q.value(3).toByteArray();

        stringList.append(id);
        stringList.append(name);
        stringList.append(price);
        stringList.append(QString(image.toBase64()));

    }
    emit stringListChanged();
}

void Database::getDessertDatabase()
{
    QSqlQuery q;
    q.exec("SELECT id, name, price, image FROM dessert");

    stringList.clear();

    while (q.next()) {

        QString id = q.value(0).toString();
        QString name = q.value(1).toString();
        QString price = q.value(2).toString();
        QByteArray image = q.value(3).toByteArray();

        stringList.append(id);
        stringList.append(name);
        stringList.append(price);
        stringList.append(QString(image.toBase64()));
    }
    emit stringListChanged();
}

void Database::foodSearch(const QString &searchTerm)
{
    QSqlQuery q;

    q.prepare("SELECT id, name, price, image FROM food WHERE name LIKE :searchTerm");
    q.bindValue(":searchTerm", "%" + searchTerm + "%");

    q.exec();

    stringList.clear();

    while (q.next()) {

        QString id = q.value(0).toString();
        QString name = q.value(1).toString();
        QString price = q.value(2).toString();
        QByteArray image = q.value(3).toByteArray();

        stringList.append(id);
        stringList.append(name);
        stringList.append(price);
        stringList.append(QString(image.toBase64()));

    }
    emit stringListChanged();
}

void Database::soupSearch(const QString &searchTerm)
{
    QSqlQuery q;

    q.prepare("SELECT id, name, price, image FROM soup WHERE name LIKE :searchTerm");
    q.bindValue(":searchTerm", "%" + searchTerm + "%");

    q.exec();

    stringList.clear();

    while (q.next()) {

        QString id = q.value(0).toString();
        QString name = q.value(1).toString();
        QString price = q.value(2).toString();
        QByteArray image = q.value(3).toByteArray();

        stringList.append(id);
        stringList.append(name);
        stringList.append(price);
        stringList.append(QString(image.toBase64()));

    }
    emit stringListChanged();
}

void Database::dessertSearch(const QString &searchTerm)
{

    QSqlQuery q;

    q.prepare("SELECT id, name, price, image FROM dessert WHERE name LIKE :searchTerm");
    q.bindValue(":searchTerm", "%" + searchTerm + "%");

    q.exec();

    stringList.clear();

    while (q.next()) {

        QString id = q.value(0).toString();
        QString name = q.value(1).toString();
        QString price = q.value(2).toString();
        QByteArray image = q.value(3).toByteArray();

        stringList.append(id);
        stringList.append(name);
        stringList.append(price);
        stringList.append(QString(image.toBase64()));

    }
    emit stringListChanged();

}

Database::~Database()
{
    db.close();
}













