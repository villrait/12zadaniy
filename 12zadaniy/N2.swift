import Foundation

/*
 2. Базовый класс – работник. Производные – работник на почасовой оплате и на окладе. Создать класс Предприятие, который может содержать оба вида работников. Предусмотреть метод подсчета работников отдельно на почасовой оплате и на окладе
 */

class Worker {}

class WorkerHour: Worker {}

class WorkerSalary: Worker {}

class Work {
    var manWorker: [Worker]
    
    init(manWorker: [Worker]) {
        self.manWorker = manWorker
    }
    
    func jobHour() -> Int {
        return manWorker.filter {$0 is WorkerHour}.count
    }
    
    func jobSalary() -> Int {
        return manWorker.filter {$0 is WorkerSalary}.count
    }
}

let workerHour1 = WorkerHour()
let workerHour2 = WorkerHour()
let workerHour3 = WorkerHour()
let workerHour4 = WorkerHour()
let workerSalary1 = WorkerSalary()
let workerSalary2 = WorkerSalary()
let workerSalary3 = WorkerSalary()

let work = Work(manWorker: [workerHour1, workerHour2, workerHour3, workerHour4, workerSalary1, workerSalary2, workerSalary3])
