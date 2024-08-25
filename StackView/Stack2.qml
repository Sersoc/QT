import QtQuick
import QtQuick.Controls
Item {

    Component.onCompleted: {
        testText.text = "aS"
    }
    Component.onDestruction: {//화면이 삭제 즉 화면이 끝날때 출력되는 함수
          console.log("screen1 Component.onDestroyed")
      }
     Rectangle//배경 색을 지정하는 부분
     {
         anchors.fill: parent
         color:"green"
     }
     Text
     {
         id:testText
         anchors.horizontalCenter: parent.horizontalCenter
         text:"screen1 testData"
         font.pixelSize: 30
         font.bold: true
     }
     Text
     {
         id:testTT
         anchors.centerIn: parent
         text:"screen1!!"
         font.pixelSize: 50
         font.bold: true
     }
     Button
     {
         id:nextButton
         anchors.top:testTT.bottom
         anchors.horizontalCenter: parent.horizontalCenter
         text:"go next screen"
         onClicked: {
              stackView.push(Qt.resolvedUrl("qrc:/screen2.qml"))//다음 화면을 출력하기 위해 stack에 화면을 쌓는 코드
              //stack에 메인화면 두번째화면 세번째 화면이 쌓이게 된다.
         }
     }
     Button
     {
         id:previousButton
         anchors.top:testTT.bottom
         anchors.right: nextButton.left
         anchors.rightMargin: 30
         text:"go previous screen"
         onClicked: {
             stackview.pop();//이전화면을 호출하기위해 stack의 제일 위에 화면을 밖으로 빼주어 첫화면을 보여준다.
         }
     }

}
