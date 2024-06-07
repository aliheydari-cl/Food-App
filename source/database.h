#ifndef DATABASE_H
#define DATABASE_H

#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlQueryModel>

class Database : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList stringList READ getStringList WRITE setStringList NOTIFY stringListChanged)

public:
    explicit Database(QObject *parent = nullptr);
    ~Database();

    QStringList getStringList() const;

public slots:
    void getFoodDatabase();
    void getSoupDatabase();
    void getDessertDatabase();

    void foodSearch(const QString &searchTerm);
    void soupSearch(const QString &searchTerm);
    void dessertSearch(const QString &searchTerm);

    void setStringList(const QStringList &newStringList);

signals:
    void stringListChanged();

private:
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");

    void createDatabase();
    void databaseInitialization(QString tableName, QString id, QString name, QString price, QString imagePath);

    QStringList stringList;

    Database *database;

};

#endif
