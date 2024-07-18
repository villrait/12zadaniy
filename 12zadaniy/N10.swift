import Foundation

/*
 10. Базовый класс – оружие. Производные – огнестрельное и холодное. Создать класс ОружейнаяПалата, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно огнестрельного и холодного оружия
 */

class Gun {}

class FireGun: Gun {}

class ColdGun: Gun {}

class Armory {
    var gunArmory: [Gun]
    
    init(gunArmory: [Gun]) {
        self.gunArmory = gunArmory
    }
    
    func countFireGun() -> Int {
        return gunArmory.filter {$0 is FireGun}.count
    }
    
    func countColdGun() -> Int {
        return gunArmory.filter {$0 is ColdGun}.count
    }
}

let fireGun1 = FireGun()
let fireGun2 = FireGun()
let fireGun3 = FireGun()
let fireGun4 = FireGun()
let fireGun5 = FireGun()
let coldGun1 = ColdGun()
let coldGun2 = ColdGun()
let coldGun3 = ColdGun()
let coldGun4 = ColdGun()
let coldGun5 = ColdGun()
let coldGun6 = ColdGun()
let coldGun7 = ColdGun()
let coldGun8 = ColdGun()
let coldGun9 = ColdGun()

let gunArmoryCount = Armory(gunArmory: [fireGun1, fireGun2, fireGun3, fireGun4, fireGun5, coldGun1, coldGun2, coldGun3, coldGun4, coldGun5, coldGun6, coldGun7, coldGun8, coldGun9])
