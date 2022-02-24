import UIKit

//closuer 클로저

//코드블럭(Code Block) - 코드 뭉치
//코드 뭉치를 변수로 만들고, 매개변수로 전달하고, 실행도 할 수 있다
//코드블럭을 변수로 만들면 좋은 점: 비동기적인 처리(코드를 읽어들이는 시점과 실행하는 시점)
//통신 - 요청과 응답처리, UI이벤트 - 클릭이벤트가 생성될 때 실행

// 함수형 언어의 특징: 순차적(절차적)언어 -> 클래스 지향언어(자바, C#) -> 함수형언어(JS, Swiftm Kotlin)

//클로저를 만드는 방법
//{ (매개변수 이름: 타입) -> 반환형 in
//  수행할 코드들...
//}

//일반함수
func add(a: Int, b: Int) -> Int{
    return a + b;
}

//일반변수

var sub: Int = 10

//클로저: 코드뭉치(블럭)을 만든다
var sum:(Int, Int)-> Int = {
    (a:Int, b:Int) -> Int in//클로저
        return a + b;
    
}

//클로저 변수르루 실행해보자
var result = sum(10, 20)

//일반함수의 매개변수로 클로저변수를 전달해보자
//값을 전달하는 것이 아니고, 코드뭉치(블럭, 변수)를 전달해 주는 것
func calc(a:Int, b:Int, method: (Int, Int) -> Int) -> Int{
    return method(a, b)
}
result = calc(a:10, b:20, method: sum)
print(result)

//클로저 변수 사용예 2
//일반함수
func print1(name1: String, name2:String){
    print(name1, name2)
}
print1(name1: "g", name2: "h")

//일반 함수 -> 클로저 변수
var myClosure: (String, String) -> Void = {
    (name1: String, name2: String)-> Void in
    print(name1, name2)
}
myClosure("g", "b")
