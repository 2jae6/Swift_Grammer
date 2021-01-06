import UIKit

// """ 따옴표를 3개 하면 안에 따옴표도 같이 처리 가능합니다.
let jsonFromServer = """
{
    "nick_name": "개발하는 정대리",
    "job": "유튜버, 개발자",
    "user_name": "dev_k"
}
"""

// 코더블을 통해 제이슨 데이터를 혹은 스트럭트 인스턴스로 생성이 가능
struct User: Codable{
    var nickname:String
    var job:String
    var myUserName: String
    
    // 이때는 파싱하는 제이슨이 키와 멤버 변수와 이름이 일치해야하는데
    // 아래와 같이 코딩키를 이용하여 변경이 가능합니다.
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        case myUserName = "user_name"
        case job
    }
}


// 제이슨 스트링을 데이터로 만들기
let jsonData : Data = jsonFromServer.data(using: .utf8)!
do{
    // 제이슨 디코더를 통해 제이슨 데이터로 유저 인스턴스를 생성
    // try catch로 에러를 처리
    let user = try JSONDecoder().decode(User.self, from: jsonData)
    print("User: \(user)")
}catch{
    print("에러 발생: \(error.localizedDescription)")
}
