import UIKit

//조건문 if문(80%), switch문(20%)

//ifansdml 4가지 패턴
//1. 단일 if문(single)
if true{//소괄호 없어짐. 중괄호 생략 불가
    //참일때 수행
}
//2. if(single) else문
if false{
    //참일때
}else{
    //거짓일때
}
//3. if else if 문
if false{
    //
}else if true{//A조건이 아니고, B의 조건인가?
    
}
else{//A, B 가 아닌 모든 조건
    
}
//4. 중첩(duplicated) if문(if안의 if문, if in if)
//3, 4 depth이상 권장하지 않음 -> function으로 대체하는 것이 좋다.
if true{
    if false{
        
    }else{
        
    }
}

//랜덤수(임의의 수) 발생
let randomNum: UInt32 = arc4random_uniform(100);//0~99까지의 값을 랜덤수로 발생시킴
//UInt32 -> Int로 형변환
let intValue: Int = Int(randomNum);

//로또번호 1~45까지의 값에서 하나의 랜덤수 발생
let lottoNum: UInt32 = arc4random_uniform(45) + 1;//0~44 => 1~45

//switch case
switch lottoNum {//소괄호 없어짐
case 0:
    print("0")
case 1...20:
    print("1~20")
case 21...45:
    print("21...45")
default:
    print("other number")
}

//연습문제
//1...10 사이의 랜덤수를 발생, if문 사용하여 5보다 작으면 5보다 작음, 8보다 작으면 8보다 작음, 그외의 수이면 그외의 수 라고 출력

let num:UInt32 = arc4random_uniform(10)+1;

if num<5 {
    print("under 5")
}else if num<8{
    print("under 8")
}else{
    print("other number")
}

//연습문제 switch문 버전

switch num {
case 1...4:
    print("under 5")
case 5...7:
    print("under 8")
default:
    print("other number")
}
