import UIKit

// 매개 변수로 클로저를 다수로 가지는 메소드
func someFunctionWithClosure(completion: () -> Void,
                             secondCompletion: (String) -> Void,
                             thirdCompletion: (Int) -> Void){
    print("someFunctionWithClosure() called")
    
    completion()
    secondCompletion("두 번째 클로저")
    thirdCompletion(3)
}

// 멀티 트레일링 클로저 사용이 가능하다

someFunctionWithClosure {
    
} secondCompletion: {
    print("\($0)")
} thirdCompletion:
{
    print("\($0)")
}

