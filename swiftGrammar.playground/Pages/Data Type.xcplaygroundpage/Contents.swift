import Foundation

// Int
var someInt: Int = -100
someInt = 100
//someInt = 1.1 1.1은 부동 소수점을 가지고 있어서 안됨

// UInt
var smoeUInt: UInt = 200
//someUInt = -100 부호가 있어서 안됨

// Float
var someFloat: Float = 1.1
someFloat = 1 //자동으로 1.0이라는 실수가 저장됨
print(someFloat)

// Double
var someDouble: Double = 1.1
someDouble = 1 //자동으로 1.0이라는 실수가 저장됨

// Bool
var someBool: Bool = true
someBool = false

// Character
var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "😃"
//someCharacter = "abcd" 문자열이라서 타입이 달라서 안됨

// String
var someString: String = "안녕하세요 👏"

// 타입 추론
var number = 10 //변수, 상수명 뒤에 타입을 지정하지 않아도 컴파일러가 할당된 값을 기준으로 변수, 상수의 타입을 결정해 줌


