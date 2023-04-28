import Foundation

// for in
/*
 for 루프상수 in 순회대상 {
    실행할 구문..
 }
*/
for i in 1...4 {
    print(i)
} // 출력 1 2 3 4

let array = [1,2,3,4,5]
for i in array {
    print(i)
} // 출력 1 2 3 4 5

// while
/*
 while 조건식 {
 // 실행할 구문
 }
*/
var number = 5
while number < 10 {
    number+=1
}
number // 출력 10

// repeat while
/*
 repeat {
 // 실행할 구문
 } while 조건식
*/
var x = 6
repeat {
    x+=2
} while x < 5
print(x) // repeat while문은 적어도 한번은 실행이 됨
// 출력 8 
