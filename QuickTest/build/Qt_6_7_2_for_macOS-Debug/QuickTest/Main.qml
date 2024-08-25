import QtQuick
import "."
Window {
    property bool imgClick: true
    property int count: 0
    width: showFullScreen()
    height: showMaximized()
    visible: true
    title: qsTr("Print")

    Text {
        id: cText
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


    Flickable
     {
         x:700
         y:200
         width:300
         height:100
         contentHeight: text.height < text.contentHeight ? text.contentHeight : text.height

         clip: true
         Text
         {
             id:text
             width:300
             height:50
             text: "Hello World Hello
             World Hello World Hello World
             Hello World Hello World Hello
             World Hello World Hello World Hello World Hello World Hello World"
             wrapMode:Text.WrapAnywhere
             font.pixelSize: 50
         }
         Rectangle
         {
             anchors.fill: parent
             border.color:"red"
             color:"transparent"
         }
     }

    Rectangle{
        x: 300
        y: 300

        width: 100
        height: 100
        color: "black"
        // anchors.fill: parent
        border.width: 5
        border.color: "green"
        Text{

            text: "In Rect"
            width: 100
            height: 50
            color: "white"
        }

    }
    ItemCode{
        id:customtext1
         rTextGeometry: Qt.rect(0,150,300,100)
         text:"cutomtext1"
    }

    Text {
        x: 500
        y: 500
        width: test.width
        height: test.width
        text: test.text

        id: name

    }
    Image {
        id: testImage
        x:0
        y:0
        width: 100
        height: 100
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                count++;
                customtext1.text = "re"+ count;
            }
            onReleased: {
                count--;
                customtext1.text = "ree"+ count;
            }

            // onEntered: {
                // count++;
                // customtext1.text = count;
            // }
            // onExited: {
            //     count--;
            //     customtext1.text = count;
            // }

            // onClicked: {
            //     count++;
            //     customtext1.text = count;
            // }
        }

        source: "file:///Users/leejaeik/Desktop/QTStudy/QT/Image/IMG_0017.JPG"
    }

}
// Item {
//     id: name
//     property alias text:text.text
//     property rect rText
//     Text {
//            anchors.fill: parent
//            id : text
//            text: ""
//            font.bold: bold  //텍스트의 bold에 변수값로 지정해서 개발자가 지정한 값으로 설정이 가능하게 함
//            font.pixelSize: pixelSize // 텍스트의 사이즈를 변주값으로 지정해서 개발자가 지정한 값으로 크기를 설정
//        }
//     onRTextChanged: :{
//         name.x = rText.x
//     }
// }
