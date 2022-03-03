import UIKit

let str1: String = "apple"
let str2: String = "banana"
let result = str1.compare(str2)

switch result{
case ComparisonResult.orderedSame:
    print("same")
case ComparisonResult.orderedAscending:
    print("bigger")//뒤가 더 큼
case ComparisonResult.orderedDescending:
    print("smaller")//뒤가 더 작음
default:
    print("default")
}
//문자열 연결
print( str1 + str2)
print(str1.appending(str2))

let text = "abc"//text[0]불가, 배열처럼 불가능
let index = text.index(text.startIndex, offsetBy: 0)//start: 0, start로부터 0만큼 떨어진 곳
let char: Character = text[index]
for ch in text{
    print(ch)
}
print(char)
//소괄호 지원 x
let char2: Character = Character("a")//생성자 처럼 사용 가능

var myName : String = "tom"
myName.insert("!", at: myName.endIndex)//끝에 추가
myName.insert("@", at: myName.startIndex)//앞에 추가

let index2 = myName.index(myName.startIndex, offsetBy: 1)
myName.insert(contentsOf: "My", at: index2)//contentsOf -> 한개가 아니기 때문

var myString2: String = "swift programming"
myString2.removeAll()//전체 삭제
//== myString2 = ""

var myString3: String = "swift programming"
let result2 = myString3.removeFirst()//첫번째 삭제
print(myString3)

myString3 = "swift programming"
let range = myString3.index(myString3.endIndex, offsetBy: -12)..<myString3.endIndex
myString3.removeSubrange(range)//범위 지정 삭제

let myString4 = "swift programming"
if myString4.contains("swift"){
    print("find")
}else{
    print("not found")
}

//optional binding
if let range = myString4.range(of: "swift"){
    print("find", range)
}else{
    print("not found", range)
}

//split
let myString5 = "1, 2, 3, 4, 5, 6"
let arrayStr: [Substring] = myString5.split(separator: ",")//공백 포함 안됨
let arrayStr2: [String] = myString5.components(separatedBy: ", ")//공백 포함 가능

//문자열을 숫자로
let myString6 = "123"
let myInt: Int? = Int(myString6)
//Int -> Float
let myFloat: Float? = Float(myInt!)//myInt가 optional이기 때문에 !를 사용해서 강제 언래핑해줌

//래핑 클래스
//NSNumber: 모든 숫자 데이타형을 담을 수 있는 클래스
var myInt2: Int = 10
let myIntNumber = NSNumber(value: myInt2)
var tempFloat = myIntNumber.floatValue
var tempInt = myIntNumber.intValue

//NSValue: 모든 데이터형을 래핑하는 크랠스(기본자료형, 클래스(객체), 구조체, 열거형)
let rangeValue = NSRange(location: 0, length: 3)
let rangeValueObject = NSValue(range: rangeValue)
let tempRange = rangeValueObject.rangeValue

//문자열의 범위를 지정할때, NSRange를 사용함
var myNSString2: NSString = NSString(string: "swift programming")
let subStr = myNSString2.substring(with: rangeValue)

//swift any 데이터타입: 모든 데이터타입을 담을 수 있는 자료형

//함수
//func 함수이름 (매개변수 이름: 타입) -> 반환형 타입{
// 수행문...
//}

func myFunc(){
    print("call func")
}
myFunc()

func myFunc2(name: String)->String{
    print("call")
    return name + " return"
}

myFunc2(name: "abc")
print(myFunc2(name: "abc"))

//매개변수 여러개 넣기
func printMyName(name1: String, name2: String){
    print(name1, name2)
}
printMyName(name1: "a", name2: "b")

//호출시 매개변수 이름 생략(_ 활용)
func print3(_ name1: String, _ name2: String){
    print(name1, name2)
}
print3("a", "b")//생략된 모습

//매개변수에 레이블 달기 가능
func print4(hero name1: String, actor name2: String){
    print(name1, name2)
}
print4(hero: "a", actor: "b")

//가변 매개변수 가능
func print5(name1: String, name2: String...){
    print(name1, name2)
    for name in name2{
        print(name)
    }
}
print5(name1: "name1", name2: "name2", "name3", "name4")

//배열 선언법
var arr1: Array<Int> = []
var arr2: [Int] = []

var arr6: [Int] = []
arr6.append(10)
arr6.append(11)
arr6.append(12)

print(arr6)

arr6.contains(10)//true
arr6.count//요소의 갯수
arr6.remove(at: 0)//첫번째 삭제
arr6.removeLast()
arr6.removeFirst()

//중간에 추가
arr6.insert(40, at: 0)

for i in arr6{
    print(i)
}

var names: [String] = []
names = ["tom", "john", "hana"]
print(names)
for st in names{
    print(st)
}
if names.contains("tom"){
    print("it has tom")
}else{
    print("no tom")
}

//인덱스 추출
if let index = names.firstIndex(of: "tom"){
    print(index)
}

//배열 관련 자료형
//NS 계열: NSArray(읽기만 가능), NSMultableArray(읽기, 쓰기 가능)
//swift계열: Array(var, let)

//NSArray -> Array 변환
var myNSArray = NSArray(objects: "a", "b", "c")
//NSArray ->NSMutableArray
var myMutableArray = NSMutableArray(array: myNSArray)
//NSMutableArray -> Swift Array
if let mySwiftArray = myMutableArray as NSArray as? Array<String>{//두번에 걸쳐 바꿈
    print(mySwiftArray)
}
//as 형변환
//as? 옵셔널 형변환(널이 아닐시 변환)
//NS계열 가급적 미사용

//swift array -> NSMutableArray
var mySwiftArray2: [String] = ["a", "b", "c"]
var myMultableArray2 = NSMutableArray(array: mySwiftArray2)
//swift array -> NSArray
var myNSArray2 = NSArray(array: mySwiftArray2)

//배열의 값 비교
let myArray7 = [1, 2, 3, 4, 5]
let myArray8 = [1, 2, 3, 4, 5]
if myArray7 == myArray8{
    print("same")
}else{
    print("different")
}

var myArray9 = ["a", "b", "c"]
myArray9.replaceSubrange(0..<2, with: ["x", "y"])//치환
var myArray10 = ["a", "v", "c"]
let sortedArray = myArray10.sorted()//정렬
myArray10.reverse()
print(myArray10)//역순

//특정 범위에서 요소룰 추출해서 배열 만들기
let rangeArray = sortedArray[0...1]

//구조체(클래스) 배열 만들기
struct MyStruct{
    var name = "hong"
    var age = 30
    func myFunc(){
        print("call")
    }
}
var myStructArr: [MyStruct] = []
var myStruct1 = MyStruct()
var myStruct2 = MyStruct()
myStructArr.append(myStruct1)
myStructArr.append(myStruct2)

for myStruct in myStructArr{
    //print(myStruct.name)
    //print(myStruct.age)
    print(myStruct.myFunc())
}

func pr(){
    print("call")
}
print(pr())

//Dictionary, key - value로 구성
var myDic: [String: String] = ["key": "value"]
print(myDic)
myDic["key2"] = "value2"
//추가
for (key, value) in myDic{
    print(key, value)
}

myDic.removeValue(forKey: "key")//요소 삭제
myDic.count//갯수
//NS계열: NSDictionary(수정불가), NSMutableDictionary 변경가능(추가, 삭제)
//swift계열: dictionary(var, let)

//집합 - Set
//요소의 중복 허용 안함
var mySet: Set<Int> = []
mySet.insert(10)
mySet.insert(20)
mySet.insert(30)
print(mySet)
mySet.insert(30)//이렇게 중복해서 넣으면 무시됨
let result1 = mySet.insert(30)
print(result1)
print(mySet)

mySet.isEmpty//비었는지 체크
mySet.contains(30)//contains사용가능

//집합 연산
var mySet2: Set<Int> = [10, 20, 30]
var mySet3: Set<Int> = [30, 40, 50]
var serSum = mySet2.union(mySet3)//합집합
var setCross = mySet2.intersection(mySet3)//교집합
var setSub = mySet2.subtracting(mySet3)//차집합
print(setSub)

//closuer 클로저 - 코드블럭
//일반 함수의 경우
func add(a: Int, b: Int)->Int{
    return a+b
}


//일변 변수
var sub:Int = 10

//closuer - code block을 만듬
var sum:(Int, Int)-> Int = {
    (a:Int, b:Int)-> Int in
    return a + b;
}

var result3 = sum(10, 20)


//매개변수로 클로저 전달
//값 대신 클로저를 전달하는 것
func calc(a: Int, b:Int, method: (Int, Int) -> Int) -> Int{
    return method(a, b)
}
var result4 = calc(a:10, b:20, method: sum)

func print1(name1: String, name2: String){
    print(name1, name2)
}
print1(name1: "g", name2: "h")
//클로저 활용 변환, 일반함수 -> 클로저 변수
var myClo: (String, String) -> Void = {
    (name1: String, name2: String) -> Void in
    print(name1, name2)
}

//클로저의 변형
func calc2(a:Int, b: Int, method:(Int, Int) -> Int)-> Int{
    return method(a,b)
}

//실행시 코드블럭(클로저)를 바로 전언하는 방법(자바의 익명함수와 동일)
var result5 = calc(a:10, b:20, method: {
    (a:Int, b:Int)-> Int in
    return a+b
})

//반환형 생략 가능: 타입추정
var result6 = calc2(a: 10, b: 20, method: {
    (a: Int, b: Int) in
    return a + b
})

//return 역시 생략 가능
var result7 = calc(a: 10, b:20, method:{
    $0+$1
})

//후행클로저: 함수를 소괄호로 미리 닫고, 클로저를 마지막 매개변수로 선언하는 방법
result7 = calc2(a:10, b: 20){
    (a:Int, b:Int) ->Int in
    return a + b
}
//후행클로저에서 반환형 생략 가능

result7 = calc(a: 10, b:20){
    (a:Int, b:Int) in
    return a + b
}

//매개변수도 생략 가능
result7 = calc(a:10, b:20){
    return $0 + $1
}

//return 역시 생략 가능

result7 = calc2(a: 10, b: 20){
    return $0 + $1
}


//tuple: 간단한 자료형
//배열과 딕셔너리의 중가너 형태 - 간단하게 사용하고 버리는 용도

var myTup = (10, "tom", 3.14)
myTup.0
myTup.1
myTup.2

let (count, name, value) = myTup//튜플에 이름 붙여 사용 가능
count
name
value

let myTup2 = (count: 10, name: "tom", value: 3.14)
myTup2.count

//함수의 반환으로 튜플 사용 가능
func tuFunc() -> (Int, String, Float){
    return (10, "tom", 3.14)
}

let reTup = tuFunc()
reTup.0

//튜플 타입 지정 가능 - 타입 얼라이스
typealias MyTup = (Int, String, Float)
let myTup3: MyTup = (10, "tom", 3.14)
myTup3

//Enum - 열거형
//숫자를 문자로 기억할 때

enum Week{
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Week = Week.mon
day = Week.sat
day = .fri// 생략 가능

//switch 조건문과 연동
switch day{
case .mon, .tue, .wed, .thu:
    print("week")
default:
    print("other")
}

enum Hero: Int{
    case Iroman = 0
    case Spiderman = 1
    case Hulk// 생략시 자동으로 2 삽입
}
print(Hero.Iroman)

//열거형 안에 함수 삽입 가능
enum Month{
    case jan, fab, mar
    func printMon(){
        switch self{
        case .jan, .fab, .mar:
            print("1, 2, 3")
        }
    }
}
Month.jan.printMon()








