import UIKit

//assert와 guard

//assert: 검증하다
//guard: 보호하다. 이른 탈출(early exit)

//assert: 검증을 통해서 코드가 통과하는지 조사. 안 맞으면 코드가 중단.
var myInt: Int = 11

//10이면 통과, 아니면 중단
//assert(myInt == 10, "not 10")//중단함

func myFuncAssert(age: Int?){
    
        assert(age != nil, "age is nil")
        assert(age! >= 0 && age! < 120, "out of bound" ) // 옵셔널로 들어오기때문에 강제 언래핑 해줌
        print("your age is \(age!)")
}
myFuncAssert(age: 30)
//guard let 구문을 이용, guard else 구문
func myFuncGuard(age: Int?){
    guard let newAge = age, newAge >= 0, newAge<120, newAge != nil else{
        //그 외의 조건이라면, 이른 탈출 return
        print("nil or out of bound")
        return;
    }
}
myFuncGuard(age: nil)
myFuncGuard(age: -10)
myFuncGuard(age: 30)
