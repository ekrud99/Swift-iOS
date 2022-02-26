import UIKit

//문자열 관련 함수
//String, NSString 두개 존재, 가급적 구조체 타입의 String사용 권장, NSString은 class(Objective C)타입
//값 복사를 갑편하게 하기 위해서 String을 사용할 것을 권장

//NSStirng을 String 변환해서 사용 가능
let myNSString: NSString = "john";
let mySwiftString: String = String(myNSString)

//String -> NSString 변환 가능
let againNSString: NSString = NSString(string: mySwiftString)

//문자열 관련 함수들
var myString: String = "hong"
//문자열의 길이
myString.count

//문자열의 비교
let str1: String = "Apple"
let str2: String = "Banana"
if str1 == str2{
    print("문자열 값이 서로 같음")
}else{
    print("문자열 값이 서로 같지 않음")
}

let result = str1.compare(str2)

switch result {
case ComparisonResult.orderedSame
: print("same")
case ComparisonResult.orderedAscending:
    print("bigger")
case ComparisonResult.orderedDescending:
    print("smaller")
default:
    print("default")
}

//문자열 연결: +연산자(양쪽 다 문자열 타입이면 +(문자열 연결 연산자)로 동작함)
print(str1 + str2)
print(str1.appending(str2))


//문자열에서 특정 문자 하나를 가지고 올 때
let text = "abc"
//print(text[0]) 배열처럼 접근 불가
let index = text.index(text.startIndex, offsetBy: 0)
let char: Character = text[index]

for ch in text{
    print(ch)
}

let char2: Character = "A"//'' - 소괄호 지원 안함
let char3: Character = Character("A");//생성자 함수처럼도 가능, 위와 결과 동일, 굳이 복잡하니까 잘 사용 안함

//문자열에 문자열 추가하기
var myName2: String = "tom"

myName2.insert("!", at: myName2.endIndex)//맨 끝에 추가
print(myName2)
myName2.insert("@", at: myName2.startIndex)//맨 앞에 추가
print(myName2)

let index2 = myName2.index(myName2.startIndex, offsetBy: 1)
myName2.insert(contentsOf: "My", at: index2)//중간에 추가

//문자열 삭제
var myString2: String = "Swift programming"
myString2.removeAll()
//myString2 = "" 이것도 가능
//문자열 일부 삭제
var myString3: String = "Swift programming"
let result2 = myString3.removeFirst()//맨 첫번째 삭제
print(myString3)//S가 사라진채로 출력

myString3 = "Swift programming"
let removeIndex = myString3.index(myString3.startIndex, offsetBy: 3)
myString3.remove(at: removeIndex)//index3인 f가 삭제 됨
print(myString3)

//문자열을 범우(여러문자)로 삭제하기
var myString4 = "Swift Programming"
let range = myString4.index(myString4.endIndex, offsetBy: -12) ..< myString4.endIndex
myString4.removeSubrange(range)
print(myString4)

//문자열 검색
let myString5 = "Swift programming"
if myString5.contains("Swift"){
    print("문자열 찾음")
}else{
    print("문자열 없음")
}

//옵셔널 바인딩 사용
if let range1 = myString5.range(of: "Sssswift"){
    print("find string\(range1)")//range가 nil이 아님
}else{
    print("not found")
}

//문자열 분리 - split
let myString6 = "1, 2, 3, 4, 5, 6"
let arrayStr: [Substring] = myString6.split(separator: ",")//공백 포함 안됨
for str in arrayStr{
    print(str)
}

let arrayStr2: [String] = myString6.components(separatedBy: ", ")//이 방법은 공백 포함 가능
for str in arrayStr2{
    print(str)
}

//문자열을 숫자로 바꿀떄
let myString7 = "123"
let myInt: Int? = Int(myString7)
//정수를 실수로 변환
let myFloat: Float? = Float(myInt!)

//래핑 클래스
//NSNumber : 모든 숫자 데이타형을 담을 수 있는 클래스(Int, FLoat, Double, Boll)
var myInt2: Int = 10
let myIntNumber = NSNumber(value: myInt2)
var tempFloat = myIntNumber.floatValue
var tempInt = myIntNumber.intValue

//NSValue: 모든 데이터형을 래핑하는 클래스(기본자료형, 클래스(객체), 구조체, 열거형)
let rangeValue = NSRange(location: 0, length: 3)
let rangeValueObject = NSValue(range: rangeValue)
let tempRange = rangeValueObject.rangeValue

//문자열의 범위를 지정할때, NSRange를 사용함
var myNSString2: NSString = NSString(string: "Swift programming")
let subStr = myNSString2.substring(with: rangeValue)

//Swift Any 데이터 타입: 모든 데잍터 타입을 담을 수 있는 자료형
