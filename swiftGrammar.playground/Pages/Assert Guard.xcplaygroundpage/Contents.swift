import Foundation

//assert
var value = 0
assert(value == 0)
//value가 0이기 때문에 그냥 넘어감

//value = 2
//assert(value == 0, "값이 0이 아닙니다.")
//value가 0이 아니기 때문에 에러가 나면서 "값이 0이 아닙니다."출력됨

/*
guard 조건 else {
    // 조건이 false 이면 else 구문이 실행되고
    return or throw or break 를 통해 이 후 코드를 실행하지 않도록 한다.
}
*/
func guardTest(value: Int){
    guard value == 0 else { return }
    print("안녕하세요")
}
//guardTest(value: 2)
// value가 0이기 때문에 guard문에 막혀 아무것도 출력 안함
guardTest(value: 0) // 출력 안녕하세요

func guardTest2(value: Int?){
    guard let value = value else { return }
    print(value)
}
guardTest2(value: 2) //출력 2
guardTest2(value: nil) //아무것도 출력안됨
