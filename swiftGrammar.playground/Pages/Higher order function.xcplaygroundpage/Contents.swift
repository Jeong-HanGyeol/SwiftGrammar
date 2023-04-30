import Foundation

//map
let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
    return number * 2
}
print("map \(mapArray)") //출력 map [0, 2, 4, 6]

// filter
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter { $0 > 5 }
print("filter \(filterArray)") //출력 filter [10, 20, 13]

// reduce
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0) {
    (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    return result + element
}
print("reduce \(reduceResult)")
//출력
//0 + 1
//1 + 2
//3 + 3
//6 + 4
//10 + 5
//reduce 15
