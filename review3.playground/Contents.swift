import UIKit

//구조체와 클래스
//      구조체     열거형     클래스
//형식   값타입     값타입     참조타입
//상속   불가      불가      가능
//익스텐션 가능      가능      가능

//스위프트에서는 구조체를 선호

//구조체
struct Student{
    var name: String = "name"
    var age: Int = 30
    func printMyName(){
        print(self.name)
    }
}

//구조체의 객체 할당(인스턴스 생성): 메모리에 할당
var structStudent: Student = Student()
dump(structStudent)

//구조체의 값 복사 - 대입문 활용
let structStudent2 = structStudent//값 복사 완료
dump(structStudent2)

//클래스
class Person{
    var name: String = "name"
    var age: Int = 30
    func printMyName(){
        print(self.name)
    }
}

//클래스 객체 생성(인스턴스)
var classPerson: Person = Person()
dump(classPerson)

//클래스의 생성자 함수
//init(): 생성자 - 구조체에서도 생성자 함수가 있음
//deinit(): 소멸자 - 구조체에는 없음

class SchoolMan{
    var name: String
    var age:Int
    var nick: String?
    init(name: String, age: Int){//생성자 - 생성시에 자동으로 호출
        self.name = name
        self.age = age
    }
    deinit {//소멸자 - 소멸시 자동 호출
        self.name = ""
        self.age = 0
    }
}

//객체 생성
var schoolMan: SchoolMan = SchoolMan(name: "man", age: 20)
dump(schoolMan)

//클래스의 상속: 부모클래스의 자산(변수, 함수)를 자식클래스가 상속하는 것
class Parent{
    var name: String = "parent"
    var age:Int = 40
    func printName() {
        print(self.name)
    }
}

class Child: Parent{
    
}

var child = Child()
child.name

class People{
    var name: String = "name"
    var age: Int = 30
    var intage:Int{
        get{//변수를 읽을 때 자동 호출
            return age - 1
        }
        set(inputValue){//값을 대입할 때 자동 호출
            age = inputValue + 1
        }
    }
}

var people = People()
people.age
print(people.intage)//get함수 자동 호출
people.intage = 40//set함수가 자동 호출

//get, set함수의 감시자
struct Hero{
    var name: String = "iron"
    var age:Int = 30{
        //감시자
        willSet(newAge){//값 설정 전에 호출
            print("pre age", age)
            print("new age", newAge)
        }
        didSet(oldAge){//값 설정 후에 호출
            print("pre age", oldAge)
            print("new age", age)
        }
    }
}

//옵셔널 체이닝
//널 체크 안편화
//옵셔널 바인딩: if let
//강제 언래핑: !
//이른 탈출 및 복귀: guard let, guard else
//옵셔널 형변환: as? 널이 아니면 형변환
//옵셔널 기본값: ?? "기본값"

class per{
    var objContact: Contact?
    init(){
        self.objContact = Contact()
    }
}
class Contact{
    var name: String?//초기화 안됨 - nil
    var phone: String?//초기화 안됨 - nil
    var email: String? = "모름"//초기화 안됨 - "모름"
}
let p = per()
dump(p)
p.objContact = nil
p.objContact?.name = "변사또"//objContact가 nil이므로 name = "변사또"로 대입되지 않고 지나감 - ?떼면 에러, 옵셔널 체이닝 이용 에러 피함

//옵셔널 바인딩 사용 가정
if let newObj = p.objContact{
    newObj.name = "이몽룡"
}else{
    print("nil")
}

//protocol
//가상함수: 함수의 선언만 있고 본체(코드)는 없는 함수
//특징: 다중 상속 가능

protocol Talk{
    var lang: String{get}//읽기 속성만 존재
    var topic: String{get set}// 읽기 쓰기 속성이 존재
    func talk()//가상 함수, 선언만 있고 본체는 없음
}
protocol Run {
    func run()//가상함수
}

struct Pers: Talk, Run{
    var lang: String//프로퍼티 준수
    var topic: String
    func talk() {
        print("talk")
    }
    func run() {
        print("run")
    }
}

var p1: Pers = Pers(lang: "eng", topic: "edu")
p1.talk()
p1.run()
p1.lang

//클래스의 오버로딩: 함수의 매개변수를 다르게 함으로 같은 이름의 함수를 확장하는 것 - 확장
//클래스이 오버라이딩: 자식클래스에서 부모클래스이 메소드(함수)를 재정의 하는것

class ParentClass{
    func printName(name: String){
        print("parent: ", name)
    }
    func printName(name: String, age: Int){
        print("name: ", name)
        print("age: ", age)
    }
}
var pClass: ParentClass = ParentClass()
pClass.printName(name: "father")
pClass.printName(name: "mother", age: 40)
class ChildClass: ParentClass{
    //오버라이딩: 재정의
    override func printName(name: String) {
        print("child: ", name)
    }
}
var cClass: ChildClass = ChildClass()
cClass.printName(name: "son")

//형변환
//type casting

let myInt: Int = 10
let myFloat: Float = 3.14
let myString: String = "123"

let myDouble: Double = Double(myInt)
let myInt2: Int = Int(myFloat)
let myString2: String = String(myInt)
let myInt3: Int? = Int(myString)//널 가능성 있기때문에 옵셔널 사용

//안전하게 옵셔널 바인딩
if let newInt = Int(myString){
    print("suc")
}else{
    print("fail")
}

//클래스의 형변환(다형성)
//다형성: 상속관계에서 특정한 클래스만 빼오는것

class Person2{
    var name: String = ""
    func breath(){
        print("breath")
    }
}
class Student2: Person2{
    var school: String = ""
    func gotoSchool(){
        print("school")
    }
}
class Univ: Student2{
    var major: String = ""
    func gotoMt(){
        print("mt")
    }
}

var grandfa: Person2 = Person2()
var fafa: Student2 = Student2()
var son: Univ = Univ()
//is 연산자: 상속관계의 클래스 객체의 속성을 검사해 볼 수 있다
grandfa is Person2
grandfa is Student2
grandfa is Univ

//as 연산자: 클래스 형변환 연산자 - 컴파일 단계에서 캐스팅, 성공시에만 사용 가능, 업캐스팅, 브리징에 사용
//as? 연산자: nil일수도 있기에 - 런타임에 캐스팅, 성공하면 옵셔널 반환, 실패하면 nil 반환
var optionalCasted: Student2?
optionalCasted = grandfa as? Univ
optionalCasted = son as? Univ
optionalCasted = fafa as? Student2

//??연산자: 닐이면 디폴트값으로 주는 연산자
optionalCasted = grandfa as? Univ ?? Univ()

//as!연산자: nil임을 각오하고 강제 형변환을 함 - 런타임에 실행, 특정 타입으로 강제 캐스팅, 실패시 런타임 에러
var forcedCasted: Student2?
//forcedCasted = grandfa as! Univ -> 확신일 없을 때
forcedCasted = son as! Univ//확신이 있을 때


//extension - 확장
//기능: 기존에 있던 클래스, 구조체, 열거형, 기본자료형에 기능을 확장
//오버로딩: 같은 이름의 함수를 매개변수를 다르게 해서 확장
//오버라이딩: 부모클래스의 메소드를 자식클래스에서 재정의해서 활용
//익스텐션: 다름 이름의 함수를 추가해서 확장(기존 소스는 건드리지 않음)

//상속    vs  익스텐션
//수직확장     수평확장
//클래스만 지원  클래스, 구조체, 열거형, 기본자료형
//재정의가 가능   재정의 불가(기존에 있던 함수들은 터치 불가)

extension Int{
    var isEven: Bool{
        get{
            return self % 2 == 0
        }
    }
    var isOdd: Bool{
        get{
            return self % 2 == 1
        }
    }
}

var myInt1: Int = 10
myInt1.isEven
myInt1.isOdd

extension Int{
    func multi(by n: Int) -> Int{
        return self * n
    }
}
myInt1.multi(by: 2)

//generic

//용도: 입력되는 데이타 타입을 여러가지로 다르게 해주기 위해서 사용
//주로 콜렉션 - 배열의 입력타입으로 사용이 됨. Array<Int>
//사용처: 함수, 구조체, 클래스, 열거형

struct Calc<Type>{
    var myParam: Type
    init(param: Type){
        self.myParam = param
    }
}
var myCalc = Calc<Int>(param: 10)
dump(myCalc)

//assert & guard
//검증과 보호
//assert 통해서 검증, 문제있으면 중단
var myInt4: Int = 11
//assert(myInt4 ==10, "not 10") 10이면 통과 아니면 중단

func myFuncAssert(age: Int?){
    assert(age != nil, "age is nil")
    assert(age! >= 0 && age! < 120, "out of bound")//옵셔널로 들어오기 때문에 강제 언래핑
    print("your age is \(age!)")
}
func myfuncGuard(age: Int?){
    guard let newAge = age, newAge >= 0, newAge < 120, newAge != nil else{//이 외의 조건은 탈출 -> return
        print("nil or out of bound")
        return
    }
}

