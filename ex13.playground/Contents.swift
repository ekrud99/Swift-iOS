import UIKit

//콜렉션 Collection (모음 - 라이브러리)
//1. 리스트 - List(배열 + 리스트) 자바: ArrayList
//2. 딕셔너리 - Dictionary(key - value) 자바: 맵
//3. 집합 - Set(집합 구조) 자바: Set

//Array: 같은 타입의 데이타가 나란히 뱅려된 구조(순서 있음)
//  Int배열, String배열, 구조체 배열, 객체(클래스) 배열

//배열 선언법
var arr1: Array<Int> = Array<Int>()
var arr2: Array<Int> = [] //1순위
var arr3: [Int] = []//2순위
var arr4 = Array<Int>()//타입추정
var arr5 = [Int]()//타입추정

var arr6: [Int] = []
arr6.append(10)
arr6.append(20)
arr6.append(30)
print( arr6 )
dump( arr6 )

//contains?
arr6.contains(20)
//배열 갯수
arr6.count
//요소의 삭제
arr6.remove(at: 0)//첫번째 삭제
arr6
arr6.removeLast()//마지막 삭제
arr6
arr6.removeAll()//모두 삭제
arr6

//중간에 추가시
arr6.insert(40, at: 0)
arr6.insert(50, at: 0)

//is empty?
arr6.isEmpty

for myInt in arr6{
    print(myInt)
}

//연습문제
//names라는 문제열 타입 배열 선언
//tom john, hana 추가하고 배열의 갯수를 출력 후 모든 배열의 요소를 출력, john만 출력, tom이 배열 리스트 안에 있는지 true false로 출력
var names: Array<String> = []
names.append("tom")
names.append("john")
names.append("hana")

var cnt: Int = names.count
print(names.count)
for name in names{
    print(name)
}

print(names[1])
print(names.contains("tom"))

//요소으ㅏ 인덱스를 가져올 때
if let index = names.firstIndex(of: "tom"){
    print("tom의 인덱스는 ", index)
}

//배열관련 자료형
//NS계열: NSArray(읽기만 가능), NSMulableArray(읽기, 쓰기 가능)
//Swift계열: Array(var, let)

//NSArray -> Array 변환
var myNSArray = NSArray(objects: "a", "b", "c")
//NSArray -> NSMutableArray
var myNSMutableArray = NSMutableArray(array: myNSArray)
//NSMutableArray -> Swift Array
if let mySwiftArray = myNSMutableArray as NSArray as? Array<String>{
    print(mySwiftArray)
}
//as 형변환
//as? 옵셔널 형변환( 널이 아니면 변환 )
//Swift Array -> NSMutableArray
var mySwiftArray2: [String] = ["a", "b", "c"]
var myNultableArray2 = NSMutableArray(array: mySwiftArray2)
//Swift Array -> NSArray
var myNSArray2 = NSArray(array: mySwiftArray2)

//배열의 값 비교
let myArray7 = [1, 2, 3, 4, 5]
let myArray8 = [1, 2, 3, 4, 5]
if myArray7 == myArray8{
    print("same")
}else{
    print("different")
}
//배열의 값을 치환하기
var myArray9 = ["A", "B", "C"]
myArray9.replaceSubrange(0..<2, with: ["X", "Y"])
//배열의 값 정렬
var myArray10 = ["a", "v", "c"]

let sortedArray = myArray10.sorted()
//역순으로 정렬
let reversedSortedArray = Array(myArray10.sorted().reversed())

//특정 범위에서 요소를 추출해서 배열 만들기
let rangeArray = sortedArray[0...1]

//구조체(클래스) 객체 배열 만들기
struct MyStruct{
    var name = "hong"
    var age = 30
    func myFunc(){
        print("Called")
    }
}
//구조체 배열로 반들기
var myStructArray: [MyStruct] = []
var myStruct1 = MyStruct()
var myStruct2 = MyStruct()
myStructArray.append(myStruct1)
myStructArray.append(myStruct2)

for myStruct in myStructArray{
    print(myStruct.name)
    print(myStruct.age)
    print(myStruct.myFunc())
}

//딕셔너리 Dictoinary
//키 - 값으로 구성된 데이타 타입, 자바의 Map, JS: Key - Value 객체
//JSON
//["key1": value1, "key2": value2]

let myDic: [String: String] = ["key1": "value1", "key2": "value2"]
print(myDic)


//요소에 접근하는 법
print(myDic["key1"]!)
print(myDic["key2"]!)

var nameDic = ["name1": "hong", "name2": "jil", "name3": "dong"]
//새로운 요소를 추가
nameDic["name4"] = "lee"
print(nameDic)

//Dic을 순환하기
for(key, value) in nameDic{
    print(key)
    print(value)
}

//요소 삭제
nameDic.removeValue(forKey: "name2:")
print(nameDic)

//갯수
nameDic.count
//NS계열: NSDictoinary(수정불가), NSMutableDictionary 변경가능(추가, 삭제)
//Swift계열: Dictionary(var, let)

//집합 Set
//요소의 중복을 허용하지 않은 데이터 타압: 자바의 Set(hashset)
var mySet: Set<Int> = []
mySet.insert(10)
mySet.insert(20)
mySet.insert(30)
print(mySet)
mySet.insert(30)//데이타를 중복해서 넣을 때는 무시됨
let result = mySet.insert(30)
print(result)
print(mySet)

mySet.isEmpty
mySet.contains(20)

//집합 연산
var mySet2: Set<Int> = [10, 20, 30]
var mySet3: Set<Int> = [30, 40, 50]
//합집합 A + B
var setSum = mySet2.union(mySet3)
//교집합 ^
var setCross = mySet2.intersection(mySet3)
print(setCross)
//차집합 A - B
var setSub = mySet2.subtracting(mySet3)
print(setSub)

//NS계열: NSSet 변경 불가, NSMutableSet 변경 가능
//Swift계열: Set(let, var)


