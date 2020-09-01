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
        // always exit if there is already another instance running unless the application was run with
        // "--restart" as the first argument.
        if(QApplication::arguments().length() == 0 || QApplication::arguments().first().toLower() != "--restart")
        {
            app.sendMessage("OpenMainWindow");
            exit(0);
        }
    }

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("app", &app);
    engine.load("qrc:/main.qml");

    return app.exec();
}
