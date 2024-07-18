import Foundation

/*
 5. Базовый класс – помещения. Производные – квартира и офис. Создать класс Дом, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно квартир и офисов
 */

class Room {}

class Apartment: Room {}

class Office: Room {}

class House {
    var roomCount: [Room]
    
    init(roomCount: [Room]) {
        self.roomCount = roomCount
    }
    
    func countApartment() -> Int {
        return roomCount.filter {$0 is Apartment}.count
    }
    
    func countOffice() -> Int {
        return roomCount.filter {$0 is Office}.count
    }
}

let apartment1 = Apartment()
let apartment2 = Apartment()
let office1 = Office()
let office2 = Office()
let office3 = Office()

let rooms = House(roomCount: [apartment1, apartment2, office1, office2, office3])
