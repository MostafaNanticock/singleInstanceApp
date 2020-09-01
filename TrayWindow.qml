import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow
{
    width: 640
    height: 480
    title: qsTr("Tray Window")

    signal openMainWindowTriggered()

    onClosing:
    {
        close.accepted = false
        hide()
    }

    Button
    {
        id: button
        x: 15
        y: 18
        width: 173
        height: 40
        text: qsTr("Show Main Window")

        onClicked:
        {
            hide()
            openMainWindowTriggered()
        }
    }

}
