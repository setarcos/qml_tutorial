#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "main_controller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    qmlRegisterType<MainController>("MC", 1, 0, "MainController");
    MainController mainCon;

    engine.rootContext()->setContextProperty("mainCon", &mainCon);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
