import UIkit

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() {}
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

var dog = Dog()
dog.name = "CoCo" // 클래스의 프로퍼티 값 변경 방법
dog.age = 3
dog.name //출력 CoCo
dog.age //출력 3

dog.introduce() // 출력 name CoCo age 3
