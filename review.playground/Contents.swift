import UIKit

//변수 선언
var myVar = 10 // 타입 추정
var myVar2: Int = 10// 명시적 선언

//상수 선언
let myLet1 = 10// 변경 불가
let PI = 3.14

var myVar3, myVar4, myVar5: Int// 여러 개 선언 가능

//문자열
var myStr: String = "String"
print(myStr)// 출력
dump(myStr)

class Student{
    var name = "name"
}

var student = Student()// Student의 객체
print(student)
type(of: student)

var age = 30
print("my age is \(age).")//+연산자 X
print("my age is", age, ". ")//이렇게도 가능

//Int, UInt, Double, Bool, Character, String
var myBool: Bool = true
var myCharacter = "A"// '' 사용 불가능
var myString: String = "AB"
myString = myString + "CD"// +연산자로 연결 가능

var longString = """
a
b
c
"""
//여러개의 문자열 연결 가능

//Any type = 모든 데이타 타입을 담을 수 있음
var myAny: Any = 100// 정수 데이터
myAny = "string"
myAny = true

class MyClass{
    var name = "name"
}
class MyClass2{
    var age = 30
}
var myAnyObject: AnyObject = MyClass()
myAnyObject = MyClass2()

//Optional - 널체크 - null exception 발생 빈도를 줄임

var myNum: Int = 10// 실제값 10으로 초기화 했기 때문에 nill이 아님
//var myNullable = nil -> 문법적으로 허용 x
var myNullable: Int? = nil// 명시적으로 널일수도 있음을 선언(optional)
print(myNum)
print(myNullable)

//null exception 피하는 방법
//1. 옵셔널 바인딩 - if let 구문
//2. 가드 문장 - guard let, guard else 구분
//*optional로 지정한 변수는 다른 변수와 다름 -> String != String?
//optional은 값이거나, nil 둘 중 하나

myNullable = 20
//optional binding
if let newInt = myNullable{
    //not null
    print("not null")
    print(newInt)
}else{
    //null
    print("null")
}

//강제 언래핑 forced unwrapping
//널임을 감수하고 값을 빼오는 것을 의미
//!연산자를 사용하여 실제값을 빼옴 - optional 제거
print(myNullable!)

func opbinding(){
    guard let newInt2 = myNullable else{
        return print("optional")
    }
}//guard let 구문은 옵셔널 추출을 실패한 else문만 제어 가능, 성공적 추출(guard let 통과)했다면 전역변수로 사용 가능

//연산자의 우선순위
//산술 - 비교 - 논리 - 대입 순
//swift에서는 myInt++, -- 등의 증감연산자 사용 불가
var myInt:Int = 10
myInt += 1// 이렇게 사용

//삼항 연산자 ?:
var myBool2 = (10 < 20) ? true:false
print(myBool2)

var name: String? = nil//
//name = "변사또"
print(name ?? "홍길동")// ??연산자 - 앞의 값이 널이면 뒤의 값으로 전달

//범위 연산자 range
let range = 1...10
print(range)
for i: Int in range{
    print(i)
}
let range2 = 1..<9//이런식으로도 사용 가능
for i in range2{
    print(i)
}
for i in range2.reversed(){
    print(i)
}

//조건문 if, switch

//1. single if
if true{
    //참일떄 수행
}

//2. if else
if false{
    //참일떄
}else{
    //거짓일떄
}
//3. if else if
if false{
    
}else if true{
    
}else{
    
}
//4. duplicated if
if true{
    if false{
        
    }else{
        
    }
}

//random number 발생
let randomNum: UInt32 = arc4random_uniform(100)//make 0~99, uniform 붙이면 범위 지정 가능

//switch
switch randomNum {
case 0...50:
    print("0~49")
case 50...100:
    print("50~99")
default:
    print("error")
}

//반복문 - for, while, repeat while
for i in 1...10{
    print(i)
}//일반적인 형태
for i in (0...100).reversed(){
    print(i)
}//역순으로 출력 가능
for i in stride(from: 1, through: 100, by: 2){
    print(i)
}//stride 활용, 1~100, 2씩 증가하며 출력

var arrayInt = [1, 2, 3, 4, 5]
for i in arrayInt{
    print(i)
}

let person = ["john":1000, "tom":2000]//dictionary
print(person["john"]!)//optional, nil일수도 있기 때문에 강제 언래핑
for (name, money) in person{
    print(name, money)
}

//while
var index = 0
while index < 10{
    print(index)
    index += 1
}

//repeat while - java의 do while과 동일
//적어도 한번은 수행
var idx = 0
repeat{
    print(idx)
}while idx<3

OUTER: for i in 1...10{
    for j in i...10{
        if i > 3{
            break OUTER
        }
    }
}
//레이블을 이용하여 탈출 지점을 지정할 수 있음

//구조체
struct MyStruct{
    var age = 30
}
class MyClass3{
    var age = 3
}

let myStruct = MyStruct()//new 필요없음
var myStruct2 = myStruct//age의 실제 값 복사
myStruct2.age = 33
//myStruct, myStruct2는 서로 다른 메모리 공간에 할당

let myClass = MyClass()
var myClass2 = myClass//myClass의 주소값에 정수로 전달
//myClass, myClass2는 주소값이 동일, 같은 메모리 공간을 가리키고 있음

//문자열 관련 함수
//NSString, String, String 사용 권장
let myNSString: NSString = "john"
let mySwiftString: String = String(myNSString)//NSString -> String 변환
let againNSString: NSString = NSString(string: mySwiftString)//반대, 괄호 안에 소문자

//문자열 관련 함수
var myString1: String = "apple"
myString1.count//length of string
let str1: String = "aaple"
let str2: String = "banana"
if str1 == str2 {
    print("same")
}else{
    print("different")
}



