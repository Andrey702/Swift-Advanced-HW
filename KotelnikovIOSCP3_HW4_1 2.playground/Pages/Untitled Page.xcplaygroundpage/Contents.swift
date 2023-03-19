import UIKit

/*
 
 Задача 1
 Представьте себя инженером проектировщиком телевизоров во времена, когда эпоха телевещания только набирала обороты. Вам поступила задача создать устройство для просмотра эфира в домашних условиях “Телевизор в каждую семью”.

 Вам нужно реализовать перечисление (enum) “Телевизионный канал” с 5-7 каналами.
 
 */

enum TVProgramm: String {
    case nbc
    case bbc
    case sts
    case ren
    case cbs
    case fox
}

var channal: TVProgramm = .fox

class TV {
    let model: [String: String] = ["Sharp": "OLED"]
    var isOn: Bool
    var currenTVChannel: TVProgramm
    
    init(isOn: Bool, currenTVChannel: TVProgramm) {
        self.isOn = isOn
        self.currenTVChannel = currenTVChannel
        
    }
    
    func showTvProgramNow() {
        if isOn == true {
        print("TV is on shows \(currenTVChannel)")
        } else {
            print("Tv is off")
        }
    
    }
}


var tv = TV(isOn: true, currenTVChannel: .fox)
tv.isOn
tv.model
tv.currenTVChannel
tv.showTvProgramNow()
tv.isOn = false
tv.showTvProgramNow()


/*
 
 Задача 2
 
 Время идет, рынок и потребители развиваются, и ваша компания набирает ритм. Поступают все новые и новые требования к эволюции устройств. Перед вами снова инженерная задача — обеспечить пользователей практичным устройством.
 
 */

struct Settings {
    var voliume: Double
    var isColor: Bool
}

channal = .bbc

class NewTV: TV {
    var settings: Settings
    
    init(setting: Settings, isOn: Bool) {
        self.settings = setting
        super.init(isOn: isOn, currenTVChannel: channal)
    }
    override func showTvProgramNow(){
        if isOn == true {
        print("changed the channel to \(channal)")
            print(settings)
        }
        super.showTvProgramNow()
    }
}

var newTv = NewTV(setting: Settings.init(voliume: 0.6, isColor: true), isOn: true)
newTv.currenTVChannel
newTv.settings.isColor
newTv.settings.voliume
newTv.isOn
newTv.showTvProgramNow()
newTv.isOn = false
newTv.showTvProgramNow()

