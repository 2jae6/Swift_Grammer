import UIKit

//객체 생성자 & 메소드
class Friend{
    var name = "철수"
    
    //생성자 메소드 - 객체 생성 시 발동
    init(){
        print("친구가 생겼어요! name: \(self.name)")
    }
    
    //매개 변수를 가지는 생성자 메소드
    init(_ name: String){
        self.name = name
        print("친구가 생겼어요! name: \(self.name)")
    }
    
    //해당 인스턴스 객체가 메모리에서 할당 해제 될 때 발동
    deinit {
        print("친구가 없어졌어요.. name: \(self.name)")
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    static var instancesOfSelf = [Friend]()
    class func destroySelf(object: Friend){
        instancesOfSelf = instancesOfSelf.filter{
        $0 !== object
        }
    }
    
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES{
            Friend.destroySelf(object: self)
        }
    }
}

var myFirstFriend = Friend()
let mySecondFriend = Friend("영희")

//인스턴스 메모리에서 해제하기
weak var selfDestructingObject = Friend("수잔")
if selfDestructingObject != nil{
    selfDestructingObject!.call()
}else{
    print("object no longer exists")
}
