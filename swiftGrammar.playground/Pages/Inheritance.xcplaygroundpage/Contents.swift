import Foundation

/*
 class 클래스 이름: 부모클래스 이름 {
 // 하위 클래스 정의
 }
 */

class Vehicle {
//    final var currentSpeed = 0.0 파이널로 할경우 재정의 할 수 없음
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed //출력 0
bicycle.currentSpeed = 15.0
bicycle.currentSpeed //출력 15

class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}
let train = Train()
train.makeNoise()
//출력
//speaker on
//choo choo

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description) //출력 traveling at 30.0 miles per hour in gear 2

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar \(automatic.description)") //출력 AutomaticCar traveling at 35.0 miles per hour in gear 4

