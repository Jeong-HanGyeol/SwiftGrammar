import Foundation

/*
 extension SomeType {
 // 추가 기능
 }
 */

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

var number = 3
number.isOdd // 출력 true
number.isEven // 출력 false

extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string = "0"
string.convertToInt() //출력 0
