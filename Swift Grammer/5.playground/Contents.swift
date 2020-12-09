import UIKit

// 값이 비었다. 아직 값을 설정하지 않은 상태
var someVariable : Int?

//값이 비어있다면 변수에 값을 넣는다.
if someVariable == nil{
    someVariable = 90
}

//변수에 값이 비어있는지 확인한다.
if let otherVariable = someVariable{
    print("값이 있다. otherVariable: \(otherVariable)")
}else{
    print("값이 없다.")
}

someVariable = nil
// someVariable 에 값이 없다면 기본값으로 요녀석을 넣겠다.
let myValue = someVariable ?? 10
print("myValue : \(myValue)")

var emptyVariable : Int?

myFunction(parameter: myValue)
myFunction(parameter: emptyVariable)


func myFunction(parameter: Int?){
    print("myFunction() called")
    // 값이 없으면 리턴 해버린다. 즉 지나가버린다.
    guard let unWrappedParam = parameter else {return}
    print("unWrappedParam : \(unWrappedParam)")
}
