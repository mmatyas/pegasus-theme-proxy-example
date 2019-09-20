import QtQuick 2.0

FocusScope {
    property var gCurrentGame: null

    Column {
        anchors.fill: parent

        Text {
            text: gCurrentGame ? gCurrentGame.title : " "
            color: "#fff"
            font.bold: true

            height: parent.height * 0.1
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text { text: "Favorites"; color: "#fff" }
        Favorites {
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height * 0.25
        }

        Text { text: "Recently played"; color: "#fff" }
        RecentlyPlayed {
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height * 0.25
        }

        Text { text: "All games"; color: "#fff" }
        GameList {
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height * 0.25
        }
    }
}
