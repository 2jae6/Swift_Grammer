import UIKit

// 자료형이 Error 인 enum
enum MismatchError: Error{
    case nameMismatch
}

// throw 를 통해 에러를 밖으로 던진다.
// 에러를 밖으로 보낸다고 메소드 반환 부분에 throws
func guessMyName(name userInput: String) throws{
    // 매개변수로 받은 이름이 정대리와 일치하지 않으면
    if(userInput != "정대리"){
        // 이름 nameMismatch 에러를 던진다, 보낸다.
        throw MismatchError.nameMismatch
    }
}


// do가 영문법에서 강조라고 생각하시면 좋음
// do study, do work hard
// 에러 잡아?
// do catch 를 이용해 외부로 던져진? 에러를 잡아
// 에러 처리가 가능함

do{
    try guessMyName(name: "이대리")
    print("정답 입니다!")
}catch{
    //error를 출력해서 에러 확인 가능
    print("에러메세지 : \(error)")
    print("다음 기회에.")
}
