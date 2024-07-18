import Foundation

/*
 3. Базовый класс – компьютер. Производные – ноутбук и смартфон. Создать класс РемонтСервис, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно ремонтируемых ноутбуков и смартфонов
 */

class Computer {}

class NoteBook: Computer {}

class Smartphone: Computer {}

class FixServic {
    var fixGadget: [Computer]
    
    init(fixGadget: [Computer]) {
        self.fixGadget = fixGadget
    }
    
    func fixedNoteBook() -> Int {
        return fixGadget.filter {$0 is NoteBook}.count
    }
    
    func fixedSmartphone() -> Int {
        return fixGadget.filter {$0 is Smartphone}.count
    }
}

let notebook1 = NoteBook()
let notebook2 = NoteBook()
let notebook3 = NoteBook()
let smartphone1 = Smartphone()
let smartphone2 = Smartphone()
let smartphone3 = Smartphone()
let smartphone4 = Smartphone()

let fixServic = FixServic(fixGadget: [notebook1, notebook2, notebook3, smartphone1, smartphone2, smartphone3, smartphone4])
