import UIKit

// 멤버 변수 name을 가지는 struct
// struct는 참조인 class 와 다르기 때문에
// struct 구조의 맴버 변수 값을 변경하려면
// mutating 키워드가 필요

struct Friend{
    var name : String
    
    mutating func changeName(){
        self.name = "hello! " + self.name
    }

}
var myFriend = Friend(name: "jeff")

print(myFriend.name)

myFriend.changeName()

print(myFriend.name)
