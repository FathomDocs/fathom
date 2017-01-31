import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 1280
    height: 800
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        /* focus: true is required to get key events? It seems like we'll always want to do
          ctrl+p (or whatever) to get the palette dialog, so we might need to propogate the Key
          events from wherever we are, somehow.
          */
        focus: true
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            Label {
                text: qsTr("Second page")
                anchors.centerIn: parent
            }
        }

        Keys.onPressed: {
            console.log(event.key);
            if ((event.key == Qt.Key_P) && (event.modifiers & Qt.ControlModifier)) {
                Qt.createComponent("dialog.qml").createObject(swipeView, {});
                event.accepted = true;
            }
        }
    }



    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
