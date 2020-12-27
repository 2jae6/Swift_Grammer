import UIKit
// sort, sorted

var myArray = [1, 4, 3, 2, 5, 9, 7, 6, 8, 10]
// sorted를 통해 오름차순으로 정렬된 새 콜렉션을 반환함

var filteredArray = myArray.sorted()

print("myArray : \(myArray)")
print("filteredArray : \(filteredArray)")

// 콜렉션 내의 데이터들을 번갈아 가면서 돌아
// 반환 값이 true 가 나올 때 해당하는 녀석을 넣게된다. 그래서 내림차순 정렬이 된다.
var descendingArray = myArray.sorted(by: {
    (someValue: Int, otherValue: Int) -> Bool in
    return someValue > otherValue
})
print("decendingArray : \(descendingArray)")

// 클로저 부분 축약 버전
var myDescendingArray = myArray.sorted(by: {return $0 > $1})
print("myDescendingArray : \(myDescendingArray)")

// > 를 통해 보다 간편하게 정렬이 가능하다.
var shortenDescendingArray = myArray.sorted(by: >)
print("shortenDescendingArray : \(shortenDescendingArray)")

// sort() 메소드를 통해 해당 배열 자체를 정렬한다.
myArray.sort()
myArray.sort(by: >)
myArray.sort(by: {
    return $0 < $1
})
myArray.sorted(by: {(someValue: Int, otherValue: Int) -> Bool in
        return someValue > otherValue
})
