import Foundation

// 옵셔널
var name: String?

var optionalName: String? = "HanGyeol"
print(optionalName) //옵셔널로 감싸져 있으면 일반타입과 결합도 연산도 할 수 없음 하려면 옵셔널바인딩 필요함
// 출력 Optional("HanGyeol")

//var requiredName: String = optionalName 옵셔널이 아닌 스트링타입이기 때문에 항상 값을 가지고 있어야 함

// 옵셔널 바인딩
var number: Int? = 3
print(number) //출력 Optional(3)
print(number!) //출력 3
// 옵셔널을 강제로 해제할 경우는 위험한 방법
// 만약 값이 nil인 옵셔널을 강제 해제할 경우 에러가 발생하여 프로그램이 종료될 수 있음

// 안전한 옵셔널 해제 -> 비강제해제 옵셔널 바인딩
if let result = number {
    print(result) // 출력 3
} else {}

// guard으로 옵셔널 해제
func test() {
    let number2: Int? = 5
    guard let result2 = number2 else { return }
    print(result2)
}
test() // 출력 5

// 묵시적 해제
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
} // 옵셔널값은 비교연산자를 통해 다른 값과 비교를 하면 컴파일러에서 자동으로 옵셔널을 해제해줌
// 출력 value가 6입니다.

// ?를 !로 바꾸어 사용할 때 묵시적으로 옵셔널을 해제하는 묵시적 해제 방법
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1) //출력 13
