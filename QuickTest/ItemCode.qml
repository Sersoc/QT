import QtQuick

Item
{
    id:customtext
    property rect rTextGeometry // 위치를 지정하기위한 rect 변수 추가
    property alias text: text.text // text의 글자를 넣기위한 변수 추가
    property bool bold: true //text bold를 설정하기 위한 변수 추가 기본값은 bold체
    property var pixelSize: 30 //text 사이즈를 설정하기 위한 변수 추가 기본값은 30

    Text {
        anchors.fill: parent
        id : text
        text: ""
        font.bold: bold  //텍스트의 bold에 변수값로 지정해서 개발자가 지정한 값으로 설정이 가능하게 함
        font.pixelSize: pixelSize // 텍스트의 사이즈를 변주값으로 지정해서 개발자가 지정한 값으로 크기를 설정
    }

    onRTextGeometryChanged: //qml 에서는 전역변수를 설정하면 전역변수가 변경되었을때의 시그널을 받을 수 있습니다.
                            //그래서 rTextGeometry  전역변수가 변경 되면 onRTextGeometryChanged 가 호출이 됩니다.
 //(아주 중요)
    {
        customtext.x = rTextGeometry.x  //사용자가 지정한 위치를 설정해줍니다.
        customtext.y = rTextGeometry.y
        customtext.width = rTextGeometry.width
        customtext.height = rTextGeometry.height
    }
}
