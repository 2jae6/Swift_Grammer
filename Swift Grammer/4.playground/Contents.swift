import UIKit

// 6번 0 -> 5
for i in 0 ... 5{
    print("호호 i : \(i)")
}

// 즉 5번 0 -> 4 (5보다 작은 수까지 반복)
//즉 i 가 처음에는 0부터 시작
// 반복을 뜻하는 iterate 때문에 i로 쓰는게 일반적

for i in 0 ..< 5{
    print("호호 i: \(i)")
}

// 0 -> 4 까지 짝수인 놈들만
for i in 0 ..< 5{
    print("호호 i : \(i)")
}

var randomInts: [Int] = []

//변수라고 생각하면 된다.
//i 는 사용하지 않으면 _ 언더바로 쓰면 된다.
for _ in 0 ..< 25{
    let randomNumber = Int.random(in: 0 ... 1000)
    randomInts.append(randomNumber)
    
    print("randomInts : \(randomInts)")
}
