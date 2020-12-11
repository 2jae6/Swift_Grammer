import UIKit

class Friend{
    var name : String
    
    init(_ name: String){
        self.name = name
    }
    func sayHi(){
        print("안녕?! 난 \(self.name) 라고 해")
    }
}

class BestFriend : Friend{
    //override를 통해 부모클래스의 메소드를 가져온다.
    override init(_ name: String) {
        // super 키워드로 부모의 메소드를 사용
        super.init("베프" + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}


let myFriend = Friend("철수")
myFriend.sayHi()

let myBestFriend = BestFriend("영희")
myBestFriend.sayHi()
