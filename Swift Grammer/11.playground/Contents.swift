import UIKit

//매개변수로서 클로저
func sayHi(completion: () -> Void){
    print("안녕하세여!?")
    sleep(3)
    completion()
}

//메소드 호출 시 클로저가 실행될 때를 알 수 있다.
sayHi (completion:{
    print("3초가 지났다. 1")
})

sayHi(){
    print("3초가 지났다. 2")
}
sayHi{
    print("3초가 지났다. 3")
}

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("안녕하세요?!?!?!")
    sleep(3)
    //클로저를 실행와 동시에 데이터를 반환
    completion("오늘도 빡코딩 하고 계신가요?!")
}

sayHiWithName(completion: {(comment: String) in
    print("3초 뒤 그가 말했다. \(comment)")
})
sayHiWithName(completion: {comment in
    print("3초 뒤 그가 말했다. \(comment)")
})

sayHiWithName{comment in
    print("3초 뒤 그가 말했다. \(comment)")
}
