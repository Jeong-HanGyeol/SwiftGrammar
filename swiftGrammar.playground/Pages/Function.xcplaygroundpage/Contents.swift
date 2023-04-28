import Foundation

func sum(a: Int, b: Int) -> Int {
    return a+b
}
sum(a: 5, b: 3) // 함수 호출할 때 매개변수 이름을 적어주고 콜론을 붙인 후 전달인자를 보내주면 됨
// 출력 8

func hello() -> String {
    return "hello"
}
hello() // 출력 "hello"

func printName() -> Void {} // 반환값이 없을 경우 Void 또는 타입을 안적어도 됨

func greeting(friend: String, me: String = "한결") {
    print("안녕하세요, \(friend)! 나는 \(me)입니다.")
}
greeting(friend: "길동") // "출력 안녕하세요, 길동! 나는 한결입니다."

/*
func 함수이름(전달인자레이블: 매개변수이름: 매개변수타입, 전달인자레이블: 매개변수이름: 매개변수타입) -> 반환타입 {
    return 반환값
}
*/
func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}
sendMessage(from: "Han Gyeol", to: "Gill Dong")
// 출력 "Hello Gill Dong! I'm Han Gyeol"

// 전달인자 레이블을 사용하고 싶지 않을때
func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}
sendMessage("Han Gyeol") // 출력 "Hello Han Gyeol"

// 매개변수로 몇개의 값이 들어올지 모를때 가변매개변수를 사용
func sendMessage(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}
sendMessage(me: "Han Gyeol", friends: "Json", "Albert", "Stella")
// 출력 "Hello ["Json", "Albert", "Stella"]! I'm Han Gyeol"

