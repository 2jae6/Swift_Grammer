import UIKit

// 친구 클래스
class Friend{
    var name: String = ""
    
    // nickname: String = ""
    // 해당 멤버 변수 데이터를 가져올 때
    // 해당 멤버 변수에 값을 설정 할 때 로직을 추가 할 수 있다.
    var nickname : String{
        get{
            return "내 친구" + name
        }
        set{
            name = newValue + "(내가 지어준 별명)"
        }
    }
}

let myFriend = Friend()
myFriend.name = "재욱"
print(myFriend.nickname)

myFriend.nickname = "빠빠기"
print(myFriend.nickname)

