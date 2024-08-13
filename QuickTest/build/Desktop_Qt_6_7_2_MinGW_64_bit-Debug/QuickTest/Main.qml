import QtQuick

Window {

    width: showFullScreen()
    height: showMaximized()
    visible: true
    title: qsTr("Print")

    Text {
        id: test
        x : 50
        y : 50
        width: 300
        height: 50
        font.pixelSize: 30

        text: "texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext"
        elide: Text.ElideRight

        Rectangle{

            anchors.fill: parent
            border.width: 5
            border.color: "green"
            color: "transparent"
        }
    }
    Text {
        x: 500
        y: 500
        width: test.width
        height: test.width
        text: test.text
        id: name

    }

}
