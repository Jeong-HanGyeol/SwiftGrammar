import Foundation

//저장 프로퍼티
struct Dog {
    var name: String
    let gender: String
}
var dog = Dog(name: "Han", gender: "Male")
print(dog) // 출력 Dog(name: "Han", gender: "Male")

dog.name = "한"

let dog2 = Dog(name: "한결", gender: "male")
//dog2.name = "결" 구조체가 상수로 선언되어 수정불가

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}
let cat = Cat(name: "json", gender: "male")
cat.name = "Gyeol"
print(cat.name) // 출력 Gyeol

//구조체는 값 타입이기 때문에 상수로 선언하게 되면 변경불가
//class는 참조 타입이기 때문에 상수로 선업하여도 변경가능 그러다

//계산 프로퍼티
struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        
        set(newVal) {
            averagePrice = newVal / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock) // 출력 Stock(averagePrice: 2300, quantity: 3)
stock.purchasePrice // 출력 6,900
stock.purchasePrice = 3000
stock.averagePrice // 출력 1,000

//저장 프로퍼티
class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000
// 출력
//잔액이 0원에서 1000원으로 변경될 예정입니다.
//잔액이 0원에서 1000원으로 변경되었습니다.

// 타입 프로퍼티
struct SomeStructure {
    static var storedTypeProperty = "Some value." //스토어
    
    static var computedTypeProperty: Int { //컴퓨티드
        return 1
    }
}
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty // 출력 hello
