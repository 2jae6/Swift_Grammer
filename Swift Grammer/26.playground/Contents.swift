import UIKit

struct Pet{
    init(){
        print("Pet 이 생성 되었다.")
    }
}

//클래스나 스트럭트 동일하게 적용된다.
struct Friend{
    var name : String
    //펫을 멤버 변수로 가진다.
    // lazy 키워드를 사용하면 인스턴스 생성이 바로 안된다.
    lazy var pet = Pet()
    //생성자 메소드
    init(_ name : String){
        self.name = name
        print("Friend 가 생성됨")
    }
}

// lazy 키워드가 없을 때는
// Friend가 생성될 때 Pet도 같이 인스턴스 생성이 된다.
var myFriend = Friend("철수")

// lazy 키워드가 있을 때는
// 나중에 직접 생성 해줘야한다.
myFriend.pet = Pet()

