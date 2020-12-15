import UIKit

// struct 에서도 메소드를 가질 수 있고
// 멤버 변수들 활용이 가능하다
struct Friend{
    var lastname : String
    var firstname : String
    
    //풀네임을 가져오는 메소드
    func getFullname() -> String{
        return lastname + " " + firstname
    }
}

var myFriend = Friend(lastname: "정", firstname: "대리")

// 풀네임이 들어오는걸 확인 할 수 있다.
print(myFriend.getFullname())
