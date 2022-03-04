import UIKit

//스위프트 언어의 중요한 특징
//옵셔널 Optional - 널 체크 - Null Exception 발생빈도를 줄여보자.

//자바에서 널 체크
//if( muObj == null) {
//
//    return;
//  }

var myNum1: Int = 10// 실제값으로 10으로 초기화했기 떄문에 nill이 아님
//var myNullable = nil//문법적으로 허용 x
var myNullable: Int? = nil//명시적으로 널 일수도 있음을 선언(옵셔널)
print(myNum1)
print(myNullable)

//옵셔널 변수를 안전하게 사용하는 방법: Null Exception을 피하는 방법
//1 옵셔널 바인딩 - if let 구문
//2 가드 문장 - guard elt, guard else 구문

myNullable = 20
//옵셔널 바인딩 Optional Binding
if let newInt = myNullable{
    //널이 아님
    print("not null")
    print(newInt)
    
}else{
    //널임
    print("null")
}

//강제 언래핑 forced unwrapping
//널(닐)임을 감수하고(널이 아님을 확신하고) 값을 빼오눈 것으루 의미
//! 연산자 - 실제값을 빼오는 연산자 - optional 제거
print(myNullable!)

//연습문제
//옵셔널 문자열 변수 myStr을 선언하고, "Hello"를 초기값으로 할당하고
//옵셔널 바인딩(if let)을 활용하여 myStr의 값으루 출력하시오.
//널이면 "nil입니다"
//널이 아니면, "nil이 아닙니다"

var myStr: String? = "Hello"
if let newStr = myStr{
    print("not null\(newStr)")
}else{
    print("null")
}



















