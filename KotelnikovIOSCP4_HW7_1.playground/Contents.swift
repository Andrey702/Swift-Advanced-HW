import UIKit

/*
 
 Задача 1
 Вы продолжаете разрабатывать библиотеку аудио треков. Сейчас будем работать над исполнителями треков.

 Алгоритм выполнения

 Создайте суперкласс артист;
 Определите в нем общие для артиста свойства (имя, страна, жанр);
 Определите общие методы (написать трек и исполнить трек);
 В реализацию метода “написать трек” добавьте вывод в консоль “Я (имя артиста) написал трек (название трека)”;
 В реализацию метода “исполнить трек” добавьте вывод в консоль “Я (имя артиста) исполнил трек (название трека)”;
 Создайте 3 сабкласса любых артистов и переопределите в них МЕТОДЫ суперкласса класса.
 

 
 Задача 2
 
 Создание списка артистов.

 Алгоритм выполнения

 Доработайте существующих артистов так, чтобы они имели уникальные для каждого из них свойства и методы.
 Защитите этих артистов от редактирования в будущем.
 


 */


class Artist {
     
    var name: String
    var country: String
    var genre: String
    var trackName: String
    
    
    init(name: String, country: String, genre: String, trackName: String) {
        self.name = name
        self.country = country
        self.genre = genre
        self.trackName = trackName
    }
    
    func writeATrack() {
        print("Я \(name) написал трек \(trackName)")
    }
    
    
    func performATrack(){
        print("Я \(name) исполнил трек \(trackName)")
    }
    
    
}




class ArtistOne: Artist {
    
    final var yearOfFoundation: Int
    
    init(name: String, country: String, genre: String, trackName: String, yearOfFoundation: Int) {
        self.yearOfFoundation = yearOfFoundation
        super.init(name: name, country: country, genre: genre, trackName: trackName)
    }
    
    
    final override func writeATrack() {
        print("Я \(name) написал новый трек \(trackName)")
    }
    
    final override func performATrack() {
        print("Я \(name) исполнил новый трек \(trackName)")
    }
    
}


class ArtistTwo: Artist {
    
    final var numberOfConcertsPlayed: Int
    
    init(name: String, country: String, genre: String, trackName: String, numberOfConcertsPlayed: Int) {
        self.numberOfConcertsPlayed = numberOfConcertsPlayed
        super.init(name: name, country: country, genre: genre, trackName: trackName)
    }
    
    
    final override func writeATrack() {
        print("Я \(name) написал новый трек \(trackName)")
    }
    
    final override func performATrack() {
        print("Я \(name) исполнил новый трек \(trackName)")
    }
    
}


class ArtistThree: Artist {
    
    final var ageOfTheArtist: Int
    
   init(name: String, country: String, genre: String, trackName: String, ageOfTheArtist: Int) {
        self.ageOfTheArtist = ageOfTheArtist
        super.init(name: name, country: country, genre: genre, trackName: trackName)
    }
    
    
    final override func writeATrack() {
        print("Я \(name) написал новый трек \(trackName)")
    }
    
    final override func performATrack() {
        print("Я \(name) исполнил новый трек \(trackName)")
    }
    
}
