import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "."
Window {
    width: showFullScreen()
    visible: true
    StackView{
        id:stackview
        anchors.fill: parent
        initialItem: Item {
            Rectangle{
                anchors.fill: parent
                color: "Green"
            }
            Text {
                id: testText
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Page1"
                font.pixelSize: 30
                font.bold:true
            }
            Text{
                id: testTT
                anchors.centerIn: parent
                text: "center"
                font.pixelSize: 30
                font.bold: true
            }
            Button
                    {
                        anchors.top:testTT.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        text:"go next screen"
                        onClicked:
                        {
                             // stackview.push(Qt.resolvedUrl("file:/Users/leejaeik/Desktop/QTStudy/QT/StackView/Stack2.qml"))
                            stackview.push("Stack2.qml")
                        }
                    }
        }
    }

    // Text {
    //     id: name
    //     x:0
    //     y:0
    //     font.pixelSize: 100

    //     text: "공부해야지"

    // }

}
