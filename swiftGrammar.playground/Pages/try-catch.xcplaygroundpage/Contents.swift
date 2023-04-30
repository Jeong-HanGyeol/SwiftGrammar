import Foundation

enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}
//throw PhoneError.batteryLow(batteryLevel: 20) //에러표기

func checkPhoneBatteryStatus(batteryLevel:Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

/*
 do {
 try 오류 발생 가능코드
 } catch 오류 패턴 {
 처리 코드
 }
 */
do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let baterryLebel) {
    print("배터리 전원 부족 남은 베터리 : \(baterryLebel)%")
} catch {
    print("그 외 오류 발생 : \(error)")
} //배터리 전원 부족 남은 베터리 : 20%

let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status) //출력 Optional("배터리 상태가 정상입니다.")

let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2) //에러가 반드시 발생하지 않을거란 확신을 가질때만 사용해야함
//출력 배터리 상태가 정상입니다.
