import UIKit

// swift foreach
let myFriendsArray = ["철수", "영희", "수잔", "제임스", "마크"]

// foreach 반복문에서 enumerated를 통해
// 해당하는 녀석의 인덱스를 가져올 수 있습니다.
// 인덱스, 가져온 아이템
for (friendIndex, friendItem) in myFriendsArray.enumerated(){
    print("\(friendIndex): \(friendItem)")
}
