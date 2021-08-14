#pragma once
#include <QObject>
#include <QString>

class MainController: public QObject {
    Q_OBJECT
    Q_PROPERTY(QString ui_welcomeMsg MEMBER welcomeMsg CONSTANT)
public:
    explicit MainController(QObject * parent = nullptr);
    QString welcomeMsg = "Hello from Controller";
};
