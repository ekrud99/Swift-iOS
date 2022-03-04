import UIKit

//출력문 print, debugprintm dump
var myStr: String = "Swift Progarmming"

print(myStr)
debugPrint(myStr)//위 두개 주로 사용
dump(myStr)

class Student{
    var name = "홍길동"
    
}
var student = Student()
print(student)
print(student.name)
dump(student)//내부 객체 디테일 확인시 사용

//문자열 보간: 문자열 연결하기
var age = 30
//print("저의 나이는 "+age)//자바의 +연산자 사용 못함
print("저의 나이는 \(age)입니다. ")
print("my age is",age, ". ")

