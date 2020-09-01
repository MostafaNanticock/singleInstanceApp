import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow
{
    width: 640
    height: 700
    title: qsTr("Main Window")

    signal restartTriggered()

    onClosing:
    {
        close.accepted = false
        hide()
    }

    Button
    {
        text: "Restart"
        onClicked: restartTriggered()
    }

    ScrollView
    {
        anchors.fill: parent

        ListView
        {
            width: parent.width
            model: 20

            delegate: ItemDelegate
            {
                text: "Item " + (index + 1)
                width: parent.width
            }
        }
    }
}
