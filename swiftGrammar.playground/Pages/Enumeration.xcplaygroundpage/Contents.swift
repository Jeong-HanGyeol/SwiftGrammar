import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var direction = CompassPoint.east //출력 east
direction = .west //출력 west

switch direction {
case .north:
    print("south")
case .east:
    print("east")
case .south:
    print("south")
case .west:
    print("west")
} // 출력 west


enum CompassPoint2: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}
var direction2 = CompassPoint2.east //출력 east
direction2 = .west //출력 west
switch direction2 {
case .north:
    print(direction2.rawValue)
case .east:
    print(direction2.rawValue)
case .south:
    print(direction2.rawValue)
case .west:
    print(direction2.rawValue)
} // 출력 서

let direction3 = CompassPoint2(rawValue: "남") //출력 south

enum PhoneError {
    case unknown
    case batteryLow(String)
}
let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.") //출력 batteryLow("배터리가 곧 방전됩니다.")
switch error {
case .batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.") //출력 "배터리가 곧 방전됩니다."
}
