import UIKit

// String을 반환하는 클로저
let myName : String = {
    //요부분이 myName으로 들어간다.
    return "정대리"
}()
print(myName)

var yourName: String{
    return "호호 할머니"
}
print(yourName)

// 매개변수를 가지고 String으로 반환하는 클로져
let myRealNameString = { (name: String) -> String in
    return "개발하는 \(name)"
}
print(myRealNameString("정대리"))

// 클로저가 print 로직을 담고 있다.
let name = {
    print("정대리")
}
name()

//클로저가 매개변수를 가지며 아래 로직을 담고 있다.
let myRealName = {(name: String) in
    print("개발하는 \(name)")
}
myRealName("정대리")
