import UIKit

// Должность сотрудника
enum EmployeePost {
    case manager
    case cook
    case waiter
}

// Тип блюда
enum TypeDish {
    case salad
    case hotDish
    case sideDish
    case dessert
}

// Ингредиенты
enum Ingredients: String, CaseIterable {
    case potato = "Potato"
    case onion = "Onion"
    case beef = "Beef"
    case chicken = "Chicken"
    case salmon = "Salmon"
    case eggs = "Eggs"
    case flour = "Flour"
    case sugar = "Sugar"
    case butter = "Butter"
    case salt = "Salt"
    case pepper = "Pepper"
    case lettuce = "Lettuce"
    case tomato = "Tomato"
}

// Пол
enum Gender {
    case man
    case woman
}

// 1.1. Ресторан
protocol RestaurantProtocol {
    var name: String { get set }
    var employees: [EmployeeProtocol] { get set }
    var warehouseWithProducts: [(String,Int)] { get set }
    var menu: String { get set }
}


// 1.2. Сотрудник
protocol EmployeeProtocol {
    var name: String { get set }
    var gender: Gender { get set }
    var age: Int { get set }
    var position: EmployeePost { get set }
}

// 1.3. Блюдо
protocol DishProtocol {
    var typeOfDish: TypeDish { get set }
    var ingredients: [Ingredients] { get set }
    var cookingTime: Int { get set }
    var price: Int { get set }
    
}

// 1.4. Заказ
protocol OrderProtocol {
    var timeReceiptOrder: Int { get set }
    var timeReturnOrder: Int { get set }
    var dishesInTheOrder: [Dish] { get set }
    var readiness: Bool { get set }
}

// Должности (менеджер, повар, официант и т.д
class Manager: EmployeeProtocol {
    var name: String
    var gender: Gender
    var age: Int
    var position: EmployeePost
    
    init(name: String,gender: Gender, age: Int, position: EmployeePost) {
        self.name = name
        self.gender = gender
        self.age = age
        self.position = position
    }
}

class Waiter: EmployeeProtocol {
    var position: EmployeePost
    var name: String
    var gender: Gender
    var age: Int
    
    init(name: String, gender: Gender, age: Int, position: EmployeePost) {
        self.position = position
        self.name = name
        self.gender = gender
        self.age = age
        
    }
}

enum ChefsSpecialization {
    case cookTheColdShop
    case canCookAndFry
    case chefKnowsEverything
}

protocol Cook: EmployeeProtocol {
    var position: EmployeePost { get set }
    var name: String { get set }
    var gender: Gender { get set }
    var age: Int { get set }
    var chefsSpecialization: ChefsSpecialization { get set }
}


class CookTheColdShop: Cook {
    var position: EmployeePost
    var name: String
    var gender: Gender
    var age: Int
    var chefsSpecialization: ChefsSpecialization
    
    init(position: EmployeePost, name: String, gender: Gender, age: Int, ChefsSpecialization: ChefsSpecialization) {
        self.position = position
        self.name = name
        self.gender = gender
        self.age = age
        self.chefsSpecialization = ChefsSpecialization
    }
    func cookFood() {
        print("Готовить салат")
    }
}

class CanCookAndFry: CookTheColdShop {
    override func cookFood() {
        print("Готовить горячае")
    }
}

class ChefKnowsEverything: CookTheColdShop {
    override func cookFood() {
        "Готовить все"
    }
    func prepareSalad() {
        print("Готовить салат")
    }
    func cookHot() {
        print("Готовить горячае")
    }
}

// 2.2. Конкретные блюда подписать под протокол Блюда
struct Dish: DishProtocol {
    var typeOfDish: TypeDish
    var ingredients: [Ingredients]
    var cookingTime: Int
    var price: Int
}

// Создать минимум 5 блюд
var scrambledEggs: Dish = Dish(typeOfDish: .hotDish, ingredients: [.salt,.eggs], cookingTime: 5, price: 200)
var friedMeat: Dish = Dish(typeOfDish: .hotDish, ingredients: [.beef, .salt, .pepper], cookingTime: 20, price: 700)
var friedChicken: Dish = Dish(typeOfDish: .hotDish, ingredients: [.chicken, .salt, .pepper], cookingTime: 30, price: 500)
var stewedMeatWithPotatoes: Dish = Dish(typeOfDish: .hotDish, ingredients: [.salt, .pepper, .beef, .potato], cookingTime: 90, price: 600)
var saladWithMeat: Dish = Dish(typeOfDish: .salad, ingredients: [.salt, .chicken, .tomato, .eggs, .pepper], cookingTime: 15, price: 400)


// 2.3. Заказ подпишите под протокол Заказы
class Order: OrderProtocol {
    var timeReceiptOrder: Int       // Время получения Заказа
    var timeReturnOrder: Int        // Время возврата заказа
    var dishesInTheOrder: [Dish]    // Блюда в порядке
    var readiness: Bool             // Готовности заказа
    
    init(timeReceiptOrder: Int, timeReturnOrder: Int, dishesInTheOrder: [Dish], readiness: Bool) {
        self.timeReceiptOrder = timeReceiptOrder
        self.timeReturnOrder = timeReturnOrder
        self.dishesInTheOrder = dishesInTheOrder
        self.readiness = readiness
    }
}



// Создайте хранилища
var warehouseWithProducts: [String: Int] = [
     "Potato": 20,
     "Onion": 15,
     "Beef": 10,
     "Chicken": 15,
     "Salmon": 5,
     "Eggs": 30,
     "Flour": 25,
     "Sugar": 20,
     "Butter": 10,
     "Salt":30,"Pepper": 20,
     "Lettuce": 10,
     "Tomato": 50]

var orderOne = Order(timeReceiptOrder: 12, timeReturnOrder: 12, dishesInTheOrder: [scrambledEggs, friedChicken], readiness: true)


/*
 
 Задание
 Вопросы по заданию
 В качестве курсового проекта вы разработаете модель ресторана, используя ООП.

 Ваша команда разрабатывает приложение для ресторана. Вам предстоит разработать модель (костяк) всего приложения. Ваша основная задача создать абстракции и включить необходимые свойства и методы.

 Требования к коду
 Код должен запускаться без ошибок;
 Должен соблюдаться стиль кода;
 Обратите внимание на названия переменных и функций. Названия должны быть говорящими (понятными), но ёмкими.

 Алгоритм решения
 Создайте следующие протоколы и определите в них свойства и методы.
 1.1. Ресторан
 Свойства: название, сотрудники, склад с продуктами, меню.
 1.2. Сотрудник
 Свойства: имя, пол, возраст, должность (менеджер, повар, официант и т.д.).
 1.3. Блюдо
 Свойства: тип блюда (салат, горячее, гарнир, десерт), ингредиенты (картофель, лук, мясо, соль), время приготовления, цена.
 1.4. Заказ
 Свойства: время получения заказа, время отдачи заказа, блюда в заказе, готовность.

 Создайте следующие классы и структуры.
 2.1. Должности (менеджер, повар, официант и т.д.) подписать под протокол Сотрудник. Свойства и методы зависят от должности. Для поваров продумать несколько должностей. Каждый должен иметь метод “готовить”, но иметь еще свои методы. Например, повар холодного цеха делает салаты; повар горячего цеха умеет варить и жарить, шеф-повар умеет все (можно сделать привязку к типу блюда).
 2.2. Конкретные блюда подписать под протокол Блюда. Ингредиенты зависят от типа блюда. Например, для яичницы нужны: яйца, масло, соль. Создать минимум 5 блюд.
 2.3. Заказ подпишите под протокол Заказы.

 Создайте хранилища:

 продукты (ингредиенты), хранящиеся на складе с указанием количества (продумайте, какой вид коллекции использовать). Создайте минимум 15 продуктов на складе.
 заказы. Содержит в себе заказы.
 Добавлять свои свойства и методы допустимо.
 Продумайте, где можно и нужно использовать enum вместо стандартных свойств.

 Задача co звездочкой (необязательное задание)
 Реализуйте логику в методах. Например, у официанта метод “принять заказ” добавляет в начало хранилища с заказами переданный заказ. Повар берет первый добавленный заказ из хранилища и готовит. В данном случае нужно разобраться с FIFO и LIFO. После приготовления устанавливается время приготовления, статус меняется на “готов”. Наприер, вы можете учесть, что от типа блюда заказ может выполнить нужный повар или шеф. Реализуйте любую логику на ваше усмотрение.

 Выполнение работы
 Чтобы отправить работу на проверку, прикрепите архив с файлом .playground в личный кабинет.
 При возникновении вопросов попробуйте найти ответ сначала сами. Умение искать ответы пригодится вам в профессиональной деятельности, это может ускорить выполнение задания.
 Посмотрите переписку в чате группы - возможно, недавно преподаватели отвечали на аналогичный вопрос кому-то из студентов.
 На сообщения “Ничего не работает/не запускается/всё сломалось” преподаватели не смогут ответить без дополнительных уточнений. Сформулируйте вопрос более подробно и точно, чтобы помощь преподавателя была более четкой и адресной. Преподаватели курса — работающие разработчики, которые кроме преподавания занимаются рабочими проектами. Их время ограничено, поэтому постарайтесь задавать правильные вопросы, чтобы получать быстрые ответы.
 Не откладывайте выполнение курсового проекта на последний момент.
 У вас все получится, желаем успехов в выполнении курсового проекта!

 
 */
