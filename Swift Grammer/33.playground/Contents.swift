import UIKit

// 콜렉션 안에 콜렉션이 들어있는 형태 2차원
let myFriends = [["철수"], ["영희"], ["제임스", "본드"], ["스티브", "잡스"], ["개발하는", "정대리"]]

// flatmap을 통해 1차원으로 만들어 줍니다.
// 말 그대로 flat: 평평한 납작하게 눌러줍니다.

let flatMapped = myFriends.flatMap{ (item: [String]) in
    return item
}

print(flatMapped)
