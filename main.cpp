#include <QQmlContext>
#include <QQmlComponent>
#include <QQmlApplicationEngine>

#include <qtsingleapplication.h>

#include "InstancesManager.h"

int main(int argc, char *argv[])
{
    QtSingleApplication app(argc, argv);

    if(app.isRunning())
    {
        app.sendMessage("OpenMainWindow");
        exit(0);
    }

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("app", &app);
    engine.load("qrc:/main.qml");

    return app.exec();
}
