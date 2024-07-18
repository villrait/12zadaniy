import Foundation

/*
 12. Базовый класс – СМИ. Производные – телеканал и газета. Создать класс Холдинг, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно телеканалов и газет
 */

class Media {}

class TV: Media {}

class Newspaper: Media {}

class Holding {
    var holding: [Media]
    
    init(holding: [Media]) {
        self.holding = holding
    }
    
    func countTV() -> Int {
        return holding.filter {$0 is TV}.count
    }
    
    func countNewspaper() -> Int {
        return holding.filter {$0 is Newspaper}.count
    }
}

let tv1 = TV()
let tv2 = TV()
let tv3 = TV()
let newspaper1 = Newspaper()
let newspaper2 = Newspaper()

let holdingCount = Holding(holding: [tv1, tv2, tv3, newspaper1, newspaper2])
