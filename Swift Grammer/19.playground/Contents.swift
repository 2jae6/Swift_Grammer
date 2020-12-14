import UIKit

// 배열과 비슷한 set
// 배열처럼 중복으로 값을 넣을 수 있다.
// 아무리 넣어도 고유한 녀석들만 남음

var myNumberSet = Set<Int>()
myNumberSet.insert(1)
myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

print("myNumberSet.count : \(myNumberSet.count)")

// 배열과 다르게 순서가 정해져있지 않다.
// 매번 출력되는 값들의 순서가 다르다.
for item in myNumberSet{
    print("item : \(item)")
}

// 그 외에도 콜렉션 [배열, 셋, 딕셔너리, 튜플] 등이 가지고 있는 기본 메소드 들을 제공한다.
var myFriends : Set<String> = ["철수", "영희", "수지"]

if myFriends.contains("철수"){
    print("내 친구중에 철수가 있다!")
}

// 영희의 인덱스를 가져와서
if let indexToRemove = myFriends.firstIndex(of: "영희"){
    // 영희를 셋에서 지운다.
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("영희"){
        print("내 친구중에 영희는 없다..")
}
