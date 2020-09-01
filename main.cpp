#include <QQmlContext>
#include <QQmlComponent>
#include <QQmlApplicationEngine>

#include <qtsingleapplication.h>

int main(int argc, char *argv[])
{
    QtSingleApplication app(argc, argv);
    QQmlApplicationEngine engine;

    if(app.isRunning())
    {
        app.sendMessage("OpenMainWindow");
        app.aboutQt();
    }

    engine.load("qrc:/main.qml");

//    engine.rootContext()->setContextProperty("splashScreenCpp", &splashScreenCpp);


    return app.exec();
}
