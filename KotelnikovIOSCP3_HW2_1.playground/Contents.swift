import UIKit

var greeting = "Hello, playground"

/*
 
 Задача 1
 Придумайте именованные типы Swift, подбирая лучшие абстракции. Объявите свойства и методы в них. Статический анализатор подскажет, если вы забудете кое-что (‘Type annotation missing…’). На предупреждения о том, что в enum нельзя объявлять хранимые свойства и на необходимость инициализаторов в class, пока не обращайте внимания.

 *Пример:

 Дни недели - конечное число, подходит перечисление enum
 Любая анкета - форма с данными, подходит struct
 Абстракция “летчик” содержит свойства и методы, будет учиться и повышать квалификацию (меняться), увеличивать налет = class
 *Задача 2
 Напишите по 2 примера композиции и агрегации из реального мира, без использования кода. Каждому примеру дайте объяснения почему это композиция или агрегация.
 
 */

enum ContentsOfTheBackpack {
    
    case notebook
    case pen
    case book
    
    static var backpackModel: String = "Nike"
    static var backpackOwner: String = "Masha"

}


struct UserId {
    
    let name: String
    let age: Int
    let gender: String

    func userId() {
        print("name \(name), age\(age), gender \(gender)")
    }
}


class Headphones {
    
    var color: String
    var earpiece: Int
    var batteryChargePercentage: Int
    
    init(color: String, earpiece: Int, batteryChargePercentage: Int) {
        self.color = color
        self.earpiece = earpiece
        self.batteryChargePercentage = batteryChargePercentage
    }
    
    func playMusic() {
        print("I'm playing music")
    }
    func showCharge() {
        print("showing the battery charge")
    }
}
