import Foundation

/*
 11. Базовый класс – оргтехника. Производные – принтер и сканер. Создать класс Офис, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно принтеров и сканеров
 */

class OfficeEquipment {}

class Printer: OfficeEquipment {}

class Scaner: OfficeEquipment {}

class OfficeRoom {
    var officeEquipment: [OfficeEquipment]
    
    init(officeEquipment: [OfficeEquipment]) {
        self.officeEquipment = officeEquipment
    }
    
    func countPrinter() -> Int {
        return officeEquipment.filter {$0 is Printer}.count
    }
    
    func countScaner() -> Int {
        return officeEquipment.filter {$0 is Scaner}.count
    }
}

let printet1 = Printer()
let printet2 = Printer()
let printet3 = Printer()
let scaner1 = Scaner()
let scaner2 = Scaner()

let officeEquipmentCount = OfficeRoom(officeEquipment: [printet1, printet2, printet3, scaner1, scaner2])
