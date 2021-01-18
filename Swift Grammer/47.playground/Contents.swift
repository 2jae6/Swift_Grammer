import UIKit

let friends = ["영희", "철수", "존슨"]

let pets = ["야옹이", "댕댕이", "찍찍이"]

 let zipped = zip(friends, pets)

for item in zipped {
    print("\(item.0) : \(item.1)")
}

let zippedArray = Array(zip(friends, pets))
print(zippedArray)
