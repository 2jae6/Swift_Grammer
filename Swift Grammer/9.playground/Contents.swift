import UIKit

//친구
struct Friend{
    var name: String
}

// 제네릭 <T>
// 제네릭으로 어떤 자료형이 들어올 수 있도록 설정
struct MyArray<SomeElement>{

    
    // 멤버번수
    var elements = [SomeElement]()
    
    //생성자 메소드
    // _ 앞에 언더바를 넣음으로써 매개변수 이름 생략
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

var myIntegerArray = MyArray([1, 2, 3])
print("myIntegerArray : \(myIntegerArray)")

var myStringArray = MyArray(["가", "나", "다"])
print("myStringArray : \(myStringArray)")

let firstFriend = Friend(name: "철수")
let secondFirend = Friend(name: "영희")
let thirdFriend = Friend(name: "수잔")

var myFriendArray = MyArray([firstFriend, secondFirend, thirdFriend])
print("myFriendsArray: \(myFriendArray)")
