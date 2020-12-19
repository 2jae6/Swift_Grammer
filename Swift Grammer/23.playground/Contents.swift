import UIKit

// 이름관련 프로토콜
protocol Naming{
    var lastName : String{get set}
    var firstname : String{get set}
    func getName() -> String
}

// extension 확장을 통해 프로토콜에 메소드 추가

extension Naming{
    func getFullName() -> String {
        return self.lastName + self.firstname
    }
}
// Naming 프로토콜을 임플먼트 하는 스트럭트
struct Friend : Naming{
    var lastName: String
    var firstname: String
    func getName() -> String {
        return self.firstname
    }
}

let myFriend = Friend(lastName: "배", firstname: "철수")

let name = myFriend.getName()

print("네임: ", name)
// Friend 스트럭트에는 없지만
// 프로토콜 확장을 통해
// 메소드가 추가된 것을 확인 할 수 있음
let fullname = myFriend.getFullName()
print("풀네임: \(fullname)")
