import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow
{
    width: 640
    height: 480
    title: qsTr("Main Window")

    onClosing:
    {
        close.accepted = false
        hide()
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
