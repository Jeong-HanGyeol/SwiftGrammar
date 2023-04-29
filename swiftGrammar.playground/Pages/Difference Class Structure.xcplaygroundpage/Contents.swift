import Foundation

class SomeClass {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1
class3.count = 2
class1.count //출력 2

struct SomeSturct {
    var count: Int = 0
}

var struct1 = SomeSturct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count // 출력 0
struct2.count // 출력 3
struct3.count // 출력 4


