import UIKit

class MyClass{
    // 클래스 메소드는 인스턴스를 생성하지 않고 메소드 호출이 가능한데
    // final class 메소드랑 static class 메소드도 동일합니다.
    class func sayHi() -> String{
        return "안녕?!"
    }
    
    static func sayHello() -> String{
        return "안녕하세요?!"
    }
    
    final class func sayHelloFinal() -> String{
        return "호호 안녕하세요?!"
    }
}

print(MyClass.sayHi())
print(MyClass.sayHello())
print(MyClass.sayHelloFinal())

// 클래스 메소드는 오버라이딩이 가능하지만
class HanaClass: MyClass{
    override class func sayHi() -> String {
        return "sayHi() HahaClass 에서"
    }
}
print(HanaClass.sayHi())

