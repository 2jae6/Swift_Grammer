//eum 사용법
import UIKit

enum School{
    case elementary
    case middle
    case high
    
    //아래와 같이 한 줄 표현 가능
    //case elementary, middle, high
}

let yourSchool = School.elementary
print("yourSchool : \(yourSchool)")

enum Grade : Int{
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade.rawValue)")

enum SchoolDetail{
    case elementary(name: String)
    case middle(name: String)
    func get() -> String{
        switch self {
        case .elementary(name: let name):
            return name
        case .middle(name: let name):
        return name
        }
    }
}
let yourMiddleSchoolName = SchoolDetail.middle(name: "ppak - coder")
print("yourMiddleSchoolName : \(yourMiddleSchoolName.get())")
