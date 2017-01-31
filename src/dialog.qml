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
        focus: true
        Text {
            text: "modal dialog!"
            anchors.top: parent.top
        }
        Keys.onPressed: {
            if (event.key == Qt.Key_Escape) {
                close();
            }
        }
    }
}
