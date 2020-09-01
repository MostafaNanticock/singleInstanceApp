import QtQuick 2.12
import QtQuick.Controls 2.5
import Qt.labs.platform 1.1

Item
{
    Component.onCompleted:
    {
        mainWindow.show()
        trayIcon.show()
    }

    MainWindow
    {
        id: mainWindow

        onRestartTriggered: app.sendMessage("restart")
    }

    TrayWindow
    {
        id: trayWindow

        onOpenMainWindowTriggered: mainWindow.show()
    }

    Connections
    {
        target: app
        onMessageReceived:
        {
            switch(message)
            {
            case "OpenMainWindow":
                mainWindow.show()
                mainWindow.requestActivate()
                mainWindow.alert()
                break
            }
        }
    }

    SystemTrayIcon
    {
        id: trayIcon

        icon.source: "qrc:/Translation Handle.svg"

        onActivated:
        {
            switch(reason)
            {
            case SystemTrayIcon.Trigger:
                trayWindow.show()
                break
            }
        }

        menu: Menu
        {
            MenuItem
            {
                text: qsTr("Quit")
                onTriggered: Qt.quit()
            }
        }
    }
}
