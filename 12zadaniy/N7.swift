import Foundation

/*
 7. Базовый класс – летательный аппарат. Производные – самолет и вертолет. Создать класс Авиакомпания, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно самолетов и вертолетов
 */

class Aircraft {}

class Airplane: Aircraft {}

class Helicopter: Aircraft {}

class Airline {
    var aerodrom: [Aircraft]
    
    init(aerodrom: [Aircraft]) {
        self.aerodrom = aerodrom
    }
    
    func countAirplane() -> Int {
        return aerodrom.filter {$0 is Airplane}.count
    }
    
    func countHelicopter() -> Int {
        return aerodrom.filter {$0 is Helicopter}.count
    }
}

let airplane1 = Airplane()
let airplane2 = Airplane()
let helicopter1 = Helicopter()
let helicopter2 = Helicopter()
let helicopter3 = Helicopter()

let aerodromCount = Airline(aerodrom: [airplane1, airplane2, helicopter1, helicopter2, helicopter3])
