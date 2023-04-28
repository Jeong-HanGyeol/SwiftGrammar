import Foundation

// Array
var numbers: Array<Int> = Array<Int>()
numbers.append(1) // 배열, Array 추가하는 방법
numbers.append(2)
numbers.append(3) // 출력 [1,2,3]

numbers[0] //배열, Array 접근하는 방법 출력 1

numbers.insert(4, at: 2) // 배열, Array에 원하는 값을 원하는 순서에 추가하는 방법
numbers // 출력 [1,2,4,3]

numbers.remove(at: 0) // 배열, Array에 원한는 index에 값을 삭제하는 방법
numbers // [2,4,3]

var names = [String]()
var names2: [String] = [] // 배열, Array 축약된 문법 많이 사용하고 있음


// Dictionary
var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic2: [String: Int] = [:] // Dictionary 축약된 문법
var dic3: [String: Int] = ["정한결": 1]
dic3["김철수"] = 3 // Dictionary 추가하는 방법
dic3["김민지"] = 5
dic3 // 출력 ["정한결": 1, "김민지": 5, "김철수": 3]

dic3["김민지"] = 6 // Dictionary 변경하는 방법 추가랑 같음
dic3 // 출력 ["정한결": 1, "김민지": 6, "김철수": 3]

dic3.removeValue(forKey: "김민지")
dic3 // 출력 ["정한결": 1, "김철수": 3]

// Set
var set: Set = Set<Int>() // Set은 축약형이 없음

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set // 출력 {30, 10, 20}

set.remove(20)
set // 출력 {10, 30}

