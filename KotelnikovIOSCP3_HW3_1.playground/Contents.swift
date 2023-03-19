import UIKit

/*
 
 Задача 1
 
 Возьмите любой пример из жизни (класс) и опишите уровни доступа к нему. Постарайтесь описать как публичные, так и закрытые уровни и методы. Для решения задачи можно взять класс из предыдущего домашнего задания.
 
 Класс : наушники
 Имеет публичный доступ, так как любой может купить и воспользоваться отдельным экземпляром.
 Пример геттера: узнать кол-во заряда батареи
 Пример сеттера: изменить громкость воспроизведения
 Пример публичного метода: можно слушать музыку
 Пример приватного метода: нельзя понять какой тип файла воспроизводится
 
 */


/*
 
 Задача 2
 
 Создайте класс.
 Создайте 3 метода с одинаковым названием, но разными сигнатурами. Статический анализатор Swift подскажет вам, если overload не получится
 
 */


class numberInTheQueue {
    
    func person(number: String) {
        print(number)
    }
    func person(number: Int) {
        print(number)
    }
    
    func person(number: Int) -> Int {
        print(number)
        return number
    }
}



// переопределение

class Example {
    
    func display() {
        print("Owerride example")
    }
}

class Override: Example {
    
    override func display() {
        super.display()
        
        print("Was override")
    }
}

var function = Override()
function.display()



//protocol Building {
//
//    var numberOfFloors: Int { get set }
//    var roofType: String { get set }
//    var theHouseReady: Bool { get set }
//    func theHouseIsBuilt()
//
//}
//
//class House: Building {
//
//    var numberOfFloors: Int = 0
//    var roofType: String = "Yas"
//    var theHouseReady: Bool = true
//
//    func theHouseIsBuilt() {
//        print(1)
//    }
//
//}
//
//var sweetHome = House()
//sweetHome.roofType

class SmartPhone {
    
    func collNumber(number: Int) {
        print(number)
    }
    
    func collNumber(number: String) {
        print(number)
    }
    
    func collNumber(number: Double) {
        print(number)
    }
}

var phone = SmartPhone()
phone.collNumber(number: 451.44)
phone.collNumber(number: "51487412145")


class SmartTV {
    
    var isOnOf: Bool
    
    init(onOf: Bool) {
        self.isOnOf = onOf
    }
    
    func switchTheChannal() {
        if isOnOf == true {
            print("Переключить канал")
        } else {
            print("TV is off")
        }
    }
}

var tvSamsung = SmartTV(onOf: true)
tvSamsung.switchTheChannal()

class SharpTv: SmartTV {
    
    override func switchTheChannal() {
        super.switchTheChannal
        
        print("upp voll")
    }
}

var sharpTV:SmartTV = tvSamsung
sharpTV.isOnOf
sharpTV.switchTheChannal()

