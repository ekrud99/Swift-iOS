import UIKit

//반복문 for문 60%, while문 30%, repeat while문 10%

//반복적인 수행문을 실행할 때
//자바: for(초기화; 조건문; 증감문) swift에선 사라짐

//스위프트는 파이썬과 같이 범위연산자를 통해서 for문을 구현

//1~10까지 출력
for i:Int in 1...10{
    print(i)
}

//0~99까지 출력
for i:Int in 0...99{
    print(i)
}

//연습문제
//10~35 출력, 100~0까지 추력

for i:Int in 10...35{
    print(i)
}
//:Int 생략 가능 - 입력되는 값으로 들어감
for i in (0...100).reversed(){
    print(i)
}

print("")
//1~100까지 2씩 증가하여 출력하시오
for i in stride(from: 1, to: 100, by: 2){
    print(i)
}

//for문 활용 배열 순환
var arrayInt = [1, 2, 3, 4, 5]
print(arrayInt[0])//1번째 요소
print(arrayInt[1])//2번째 요소
for i in arrayInt{
    print(i)
}


//for문으로 딕셔너리(Dictionary)값을 순환시키기
//dictionary: 자바 Map과 동일한 자료구조(Key - Value)
let person = ["john":1000, "tom":2000, "hong":3000]
print(person["john"]!)//옵셔널값에 걸림, null일수도 있기 때문, 강제 언래핑 해줌(!활용)
for(name, money) in person{
    print(name, money)
}
//while문
//패턴분석
//초기화
//while(조건문){
//  수행문
//  증감문
//}

var index: Int = 0
while index < 10{
    print(index)
    index+=1;
}

//연습문제
//1~100까지 2의 배수만 출력하시오, for, while문 사용, 2의 배수 조건 i%2 ==0 사용

for i in 1...100{
    if i%2==0{
        print(i)
    }
}

var idx:Int = 1
while idx<=100{
    if idx%2==0{
        print(idx)
    }
    idx+=1
}

//무한루프 만들기
var idx2 = 0//type추정에 의해 int형으로 들어감
while true{
    if idx2>10{
        break;
    }
    print(idx2)
    idx2+=1
}

//break, continue 둘 다 사용 가능

//1~100까지 1씩 증가하면서, 2의 배수만 출력하되, 90보다 크면 탈출하는 반복문

for i in 1...100{
    if i%2 != 0{
        continue;
    }
    if i > 90 {
        break;
    }
    print(i);
}

//repeat - while문: 자바 do - while문과 동일
//적어도 한번은 수행 후 조건 비교
//초기화
//repeat{
// 수행문
// 증감문
//}while 조건문
var idx3 = 0;
repeat{
    print(idx3)
    idx3+=1;
}while idx3<10;

//이중 for문: for문에  for문이 있는 경우
//구구단 출력: 2~9다느 각 단에는 1~9까지의 값을 곱한 값
for i in 2...9{
    for j in 1...9{
        print("\(i) * \(j) = \(i*j)")
    }
    print()
}

//레이블 구문: 탈출지점을 알려줌
//이중, 삼중 for문에서 break문으로 탈출시 원하는 루프(for)문을 지정할 수 있음
OUTER: for i in 1...10{
    for j in i...10{
        if i > 3{
            break OUTER
        }
        print("\(i), \(j)")
    }
    
}
