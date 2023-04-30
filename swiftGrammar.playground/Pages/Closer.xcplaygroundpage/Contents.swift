import Foundation

/*
 { (매개 변수) -> 리턴 타입 in
    실행 구문
 }
 */

let hello = { () -> () in
    print("hello")
}
hello() //출력 hello

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}
hello2("Han") //출력 "Hello, Han"

func doSomething(closure: () -> ()) {
    closure()
}

// 클로져 생략
doSomething() {
    print("hello2")
} //출력 hello2
doSomething {
    print("hello3")
} //출력 hello3

doSomething(closure: { () -> () in
    print("hello")
}) //출력 hello

func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}
doSomething2()() //출력 hello4

func doSomething2(success: () -> (), fail: () -> ()) {
    
}
doSomething2 {
    
} fail: {
    
}

// 간소화 방법
func doSomething3(closure: (Int, Int, Int) -> Int){
    closure(1,2,3)
}
doSomething3(closure: { (a, b, c) in
    return a+b+c
})
doSomething3(closure: {
    return $0+$1+$2
})
doSomething3(closure: {
    $0+$1+$2
})
doSomething3() {
    $0+$1+$2
}
doSomething3 {
    $0+$1+$2
}
