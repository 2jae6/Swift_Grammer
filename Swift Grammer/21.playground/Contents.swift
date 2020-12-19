import UIKit


// 보통 delegate 패턴의 경우에는 ㅇㅇdelegate
// 스위프트 언어자체에서는 ㅇㅇing, ㅇㅇable
// 등으로 프로토콜의 이름을 정함

//프로토콜을 통해 멤버 변수, 메소드 등을 꼭 구현하도록 강제
protocol Naming{
    var name : String {get set}
    func getName() -> String
}


//Naming 프로토콜을 임플먼트 했기 때문에
struct Friend : Naming{
    //var name 멤버 변수를 설정하지 않으면 에러 발생
    var name : String
    // getName() 메소드 설정 안하면 에러 발생
    func getName() -> String {
        return "내 친구: " + self.name
    }
}

let myFriend = Friend(name: "철수")

let name = myFriend.getName()

print(name)
