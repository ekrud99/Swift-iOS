import UIKit

//연산자 operator
//연산자 우선순위: 산술 > 비교 > 논리 > 대입
var result = 10 + 2 - 3 / 4 * 7
//연산자 우선순위가 헷갈리면, 소괄호를 묶으면 된다
var result2 = 10 + 2 - ((3 / 4)*7)

//산비논대: 산성비가 논에 온대
//산술: +, -, *, /, %
//비교: ==(같은가), !=(같지 않은가) <, >, <=, >=
//논리: &&(and), ||(or), !(NOT 논리반전)
//대입: =, +=, -=, /=, %= 연산결과가 값으로 나옴

//증감연산자 ++ -- 스위프트 언어에서는 없어짐
// var++ -> var + 1 or var += 1
var myInt: Int = 10
myInt += 1// var +1

//삼항연산자 ?:
var myBool : Bool = (10 < 20) ? true:false
 //??연산자: 앞의 값이 널이면 뒤의 값으로 기본값(디폴드)으로 전달한다.
var name: String? = nil
name = "변사또"
print(name ?? "홍길동")


//범위 연산자: range operator 파이썬의 범위와 유사함
let range = 1...10
//시작값...종료값으로 구성
print(range)
for i:Int in range{
    print(i)
}
let range2 = 1..<9//1...9
for i:Int in range2{
    print(i)
}
for i in range2.reversed(){
    print(i)
}

//대입연산자
var myNum1 = 10

myNum1+=1
myNum1-=1
myNum1*=1
myNum1/=2
myNum1%2




