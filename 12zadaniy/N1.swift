import Foundation

/*
 1. Базовый класс – учащийся. Производные – школьник и студент. Создать класс Конференция, который может содержать оба вида учащихся. Предусмотреть метод подсчета участников конференции отдельно по школьникам и по студентам
 */

class Student {}

class SchoolStudent: Student {}

class UniversityStudent: Student {}

class Conference {
    var participants: [Student]
    init(participants: [Student]) {
        self.participants = participants
    }
    
    func countSchoolStudent () -> Int {

        return participants.filter {$0 is SchoolStudent}.count
    }
    
    func countUniversityStudent () -> Int {

        return participants.filter {$0 is UniversityStudent}.count
    }
}


let schoolStudent1 = SchoolStudent()
let schoolStudent2 = SchoolStudent()
let universityStudent1 = UniversityStudent()

let conference = Conference(participants: [schoolStudent1, schoolStudent2, universityStudent1])
