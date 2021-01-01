import UIKit

// 맵 고차함수를 통해 콜렉션의 요소를 변형 시킬 수 있습니다.
let friendsArray = ["철수", "영희", "수잔", "제임스", "마크"]
// 배열 맵핑
let myFriends = friendsArray.map{
    "내 친구: " + $0
}

print(myFriends)

let myPetDictionary = ["고양이": "야옹", "강아지": "멍멍", "송아지": "음메"]

// 딕셔너리 맵핑
let petResult = myPetDictionary.map{
    (kind, sound) in
    return ("우리집: \(kind), 울음소리: \(sound)")
}
print(petResult)

let numbersSet : Set<Int> = [1, 1, 2, 3, 4, 4, 5]

// 셋맵핑
let result = numbersSet.map({(number: Int) -> Int in
    return number * 10
    
})
print("mappedNumbersSet: \(result)")

// 아래와 같은 방식으로 클로저 부분 축약 가능
let resultOne = numbersSet.map({ (number: Int) in
    return number * 10
})

let resultTwo = numbersSet.map({
    (number: Int) in
    number * 10
})

let resultThree = numbersSet.map({$0 * 10})

let resultFour = numbersSet.map{$0 * 10}
