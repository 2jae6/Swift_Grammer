import UIKit

// Swift 옵셔널 체이닝
struct Friend {
    let nickName: String
    let person: Person?
}

struct Person{
    let name: String
    let pet: Pet?
}

struct Pet{
    let name: String?
    let kind: String
}

let pet = Pet(name: "개냥이", kind: "고양이")
let person = Person(name: "정대리", pet: pet)
let friend = Friend(nickName: "빡코더", person: nil)

// 이런식으로 옵셔널이 연쇄적으로 있을 때
if let person = friend.person{
    if let pet = person.pet{
        if let petName = pet.name{
            print(petName: \(petName))
        }
    }
}
// 옵셔널 체이닝
// 한번만 언래핑학 나머지는 옵셔널 처리가 가능하다.
if let petName = friend.person?.pet?.name{
    print("petName: \(petName)")
}else{
    // person, pet, name 중 하나가 nil이면
    print("펫 이름이 없어요")
}
