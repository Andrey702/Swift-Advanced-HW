import UIKit

/*
 
 Задача 1
 Вы разрабатываете библиотеку аудиотреков. Вам необходимо реализовать одну из категорий музыки, наполненную треками.

 Алгоритм выполнения

 Создайте объект трек.
 Определите в нем свойства имя, исполнитель, длительность и страна. Подумайте, где можно использовать enum.
 Создайте класс категория.
 Объявите в нем свойства название категории, список треков и количество треков в списке (экспериментируйте с “ленивыми” и вычисляемыми свойствами).
 Определите методы добавления и удаления треков в эту категорию
 
 */

enum Country {
    case usa
    case russia
    case soutKorea
}


struct Track: Equatable {
    
    var name: String
    var executor: String
    var country: Country
    var duration: Double
    
}

class Category {
    
    var name: String
    var trackList = [Track]()
    var trackCount: Int { return trackList.count }
    
    init(name: String) {
        self.name = name
    }
    
    func printTrackList() {
        print(trackList)
    }
    
    func addTrack(_ track: Track) {
        trackList.append(track)
    }
    
    func remuveTrack(_ track: String) {
        for (index, value) in trackList.enumerated() {
            if value.name == track {
                trackList.remove(at: index)
            }
        }
    }
}


var trackOne = Track(name: "Master Of Puppets", executor: "Metallica", country: .usa, duration: 8.42)
var tracktwo = Track(name: "Battory", executor: "Metallica", country: .usa, duration: 5.54)

var categoryOne = Category(name: "Rock")
categoryOne.addTrack(trackOne)
categoryOne.addTrack(tracktwo)

categoryOne.printTrackList()


/*
 
 Задача 2
 Доработайте свою библиотеку так, чтобы в ней было несколько категорий.

 Алгоритм выполнения
 Создайте класс библиотеки. Этот класс будет аналогичен классу категории, только хранить он должен список категорий.
 
  */

class Library {
    
    var name: String
    var categoryList = [Category]()
    var categoryCount: Int { return categoryList.count }
    
    init(name: String) {
        self.name = name
    }
    
    func printCategoryList () {
        print(categoryList)
    }
    
    func addCategory(_ category: Category) {
        categoryList.append(category)
    }
    
    func remuveTrack(_ category: String) {
        for (index, value) in categoryList.enumerated() {
            if value.name == category {
                categoryList.remove(at: index)
            }
        }
    }
}

var libraryOne = Library(name: "Rock")
libraryOne.addCategory(categoryOne)
libraryOne
