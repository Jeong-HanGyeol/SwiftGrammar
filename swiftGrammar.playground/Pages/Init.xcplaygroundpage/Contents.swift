import UIkit

/*
 init(매개변수: 타입, ...) {
 // 프로퍼티 초기화
 // 인스턴스 생성시 필요한 설정을 해주는 코드 작성
 }
*/

// 클래스 프로퍼티 초기화 방법
class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
    deinit {
        print("deint user")
    }
}

// 구조체 프로퍼티 초기화 방법
var user = User(nickname: "HanGyeol", age: 23)
user.nickname // 출력 HanGyeol
user.age // 출력 23

var user2 = User(age: 27)
user2.nickname // 출력 albert
user2.age // 출력 27

var user3: User? = User(age: 23)
user3 = nil // 출력 deint user

// deinit은 인스턴스가 메모리에서 해제되기 직전에 실행됨
// deinit은 클래스의 인스턴스에만 구현할 수 있음
// 스위프트는 인스턴스가 더이상 필요하지 않으면 메모리에서 삭제해 버림
