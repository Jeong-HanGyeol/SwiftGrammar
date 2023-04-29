import Foundation

struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}
// 인스턴스를 생성한다는 것은 클래스와 구조체를 사용하기위해서 메모리에 생성하는 것을 의미함
// 메모리에 생성된 구조체, 클래스의 실체
var user = User(nickname: "HanGyeol", age: 23)

user.nickname // 출력 HanGyeol
user.nickname = "ablert"
user.nickname // 출력 ablert 프로퍼티 값을 변경하는 방법

user.information() // 출력 ablert 23
