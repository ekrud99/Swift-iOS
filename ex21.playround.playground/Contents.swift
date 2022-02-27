import UIKit

//형변환 type casting

let myInt: Int = 10
let myFloat: Float = 3.14
let myString: String = "123"

//Int -> Double
let myDouble: Double = Double(myInt)
//Float -> Int
let myInt2: Int = Int(myFloat)

//Int -> String
let myString2: String = String(myInt)
//String -> Int
let myInt3: Int? = Int(myString)//널이 들어갈 수 있기 때문에 옵셔널 사용

//안전하게 사용하기 위해서, 옵셔널 바인딩 if let
if let newInt = Int(myString){
    //형변환 성공
    print(newInt)
}else{
    print("형변환 실패")
}

//클래스의 형변환(다형성)
//다형성: 상속관계에서 특정한 클래스만 빼오는 것

class Person{
    var name: String = ""
    func breath(){
        print("breath")
    }
}
class Student: Person{
    var school:String = ""
    func gotoSchool(){
        print("school")
    }
    
}
class UnivStudent: Student{
    var major:String = ""
    func gotoMT(){
        print("MT")
    }
    
}
var grandfa: Person = Person()
var fafa: Student = Student()
var son: UnivStudent = UnivStudent()

//is연산자: 상속관계의 클래스 객체의 속성을 검사해 볼 수 있다
grandfa is Person
grandfa is Student
grandfa is UnivStudent

//as연산자: 클래스 형변환 연산자
//as? 연산자: nil일 수도 있기에
var optionalCasted: Student?
optionalCasted = grandfa as? UnivStudent
optionalCasted = fafa as? UnivStudent
optionalCasted = son as? UnivStudent

//??연산자: 닐이면 디폴트값으로 주는 연산자
optionalCasted = grandfa as? UnivStudent ?? UnivStudent()

//as! 연산자: 닐임을 각오하고 강제 형변환을 해달라
var forcedCasted: Student?
//forcedCasted = grandfa as! UnivStudent -> 확신이 없는 경우
forcedCasted = son as! UnivStudent//확신이 있는 경우


