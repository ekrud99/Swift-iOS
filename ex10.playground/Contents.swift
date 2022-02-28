import UIKit

//변수의 값(value) 타입과 참조(reference)타입

//값타입: 변수 안에 질제 데이타(값)이 있는 경우 - 장점: 값 복사 편함, 대입(=)만으로 값 복사 가능
//참조 타입: 변수 안에 실제 값이 아닌, 그 값을 가진 메모리 주소값을 정수로 가진다, 대입문으로 값을 복사하면, 실제 값이 아닌 주소값이 복사됨.

//swift
//값 타입: 기본 자료형(Int Floatm Double, Bool, String) -> 구조체로 설계됨
//구조체, 열거형, 딕셔너리, 배열, 집합 등이 사용

//참조 타입: 클래스(객체), NS류의 자료형들(NSString, NSInt - Objective C)

//NS: Next Step의 약자 - 스티브잡스가 애플이나 맥의 OS기초를 만든 회사 이름
//스위프트는 값 타입을 선호함 - 값 전달이 편하기 때문 - 구조체를 선호

//구조체: Struct 변수화 함수를 사용 가능 값타입, 복사 간편
//열거형: Enum 변수와 함수를 사용 가능 값타입, 복사 간편
//클래스: Class 변수와 함수 사용 가능 참조 타입, 복사 복잡 - 깊은 복사 사용해야 함 - 장점: 상속이 가능

//구조체의 객체 생성
struct MyStruct{
    var age = 30;
}

class MyClass{
    var age = 30;
}


let myStruct = MyStruct();//new 키워드가 사라짐
var myStruct2 = myStruct;//age의 실제값이 복사
myStruct2.age = 33
print(myStruct.age)
print(myStruct2.age)//
//myStruct, myStruct2는 서로 다른 메모리 공간에 할당됨

//class의 객체 생성
let myClass = MyClass()
var myClass2 = myClass//myClass의 주소값(예 0x1000번지)정수로 전달
myClass2.age = 33
print(myClass.age)
print(myClass2.age)//한 공간을 접근
//myClass, myClass2는 주소값이 동일, 같은 메모리 공간을 가리키고 있음
