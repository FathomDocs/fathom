import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {
    visible: true
    title: "Some Dialog"
    modality: Qt.ApplicationModal

    contentItem: Rectangle {
        implicitWidth: 400
        implicitHeight: 100
        Text {
            text: "modal dialog!"
            anchors.centerIn: parent
        }
    }
}
