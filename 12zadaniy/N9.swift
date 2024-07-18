import Foundation

/*
 9. Базовый класс – мебель. Производные – диван и шкаф. Создать класс Комната, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно диванов и шкафов. furniture. sofa. wardrobe
 */

class Furniture {}

class Sofa: Furniture {}

class Wardrobe: Furniture {}

class RoomF {
    var roomFurniture: [Furniture]
    
    init(roomFurniture: [Furniture]) {
        self.roomFurniture = roomFurniture
    }
    
    func countSofa() -> Int {
        return roomFurniture.filter {$0 is Sofa}.count
    }
    
    func countWardrobe() -> Int {
        return roomFurniture.filter {$0 is Wardrobe}.count
    }
}

let sofa1 = Sofa()
let sofa2 = Sofa()
let sofa3 = Sofa()
let wardrode1 = Wardrobe()
let wardrode2 = Wardrobe()

let roomFurnitureCount = RoomF(roomFurniture: [sofa1, sofa2, sofa3, wardrode1, wardrode2])
