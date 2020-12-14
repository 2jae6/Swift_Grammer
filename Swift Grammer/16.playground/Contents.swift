import UIKit

// 매개변수 name을 받는 메소드
// _ 언더바를 넣어 메소드 호출 시에 이름을 안써도 됨
func sayName(_ name : String){
    
    // 받은 매개변수를 이용해 프린트로 출력
    print("안녕?! 난 \(name) 라고 해")
}

sayName("정대리")

// 메소드에 매개변수로 들어오는 값은 변경 할 수가 없다.
// 하지만 inout 키워드를 이용하면 값 변경 가능

func sayYourName(_ name : inout String){
    name = "개발하는" + name
    print("안녕?! 난 \(name) 라고 해")
}

// inout 메소드에 들어가는 값은
// 변경 가능해야 되기 때문에
// 바로 값을 넣지 못하고
// 변수에 한번 값을 담은 뒤 넣을 것

var name = "정대리"

// inout 매개 변수라고 해당 변수 앞에
// & 담아서 알려줌
sayYourName(&name)
