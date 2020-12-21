import UIKit

// swift에서 typealias 별칭

protocol Naming{
    func getName() -> String
}
protocol Aging {
    func getAge() -> Int
}

// typealias 별칭을 통해 프로토콜 별명 설정이 가능
typealias Friendable = Naming & Aging

struct Friend : Friendable{
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    func getAge() -> Int {
        return self.age
    }
}

// 자료형, 클래스, 구조체, 클로저 등
// 모두 별명 설정이 가능
typealias FriendName = String

var friendName : FriendName = "정대리"

// 친구 배열을 별명으로 설정하였다.
typealias Friends = [Friend]

var myFriendArray = Friends()

// 클로저를 StringBlock 이라는 별명으로 설정하였다.
typealias StringBlock = (String) -> Void

func sayHi(completion : StringBlock){
    print("안녕하세요?!")
    completion("오늘도 빡코딩 하고 계신가요?!")
}
sayHi(completion: { result in
    print("여기서 받음 : ", result)
})
