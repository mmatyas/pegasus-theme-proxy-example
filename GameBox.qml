import QtQuick 2.0

Image {
    property var game: null
    property bool selected: false

    signal clicked()

    width: height * (3/4)
    fillMode: Image.PreserveAspectFit

    source: game.assets.boxFront
    asynchronous: true

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.color: "red"
        border.width: 2
        visible: parent.selected
    }

    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
