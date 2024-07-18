import Foundation

/*
 8. Базовый класс – соревнование. Производные – командные соревнования и личные. Создать класс Чемпионат, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно командных соревнований и личных
 */

class Competition {}

class TeamCompetition: Competition {}

class PersonalCompetition: Competition {}

class Championship {
    var championship: [Competition]
    
    init(countChampionship: [Competition]) {
        self.championship = countChampionship
    }
    
    func countTeam() -> Int {
        return championship.filter {$0 is TeamCompetition}.count
    }
    
    func countPersonal() -> Int {
        return championship.filter {$0 is PersonalCompetition}.count
    }
}

let team1 = TeamCompetition()
let team2 = TeamCompetition()
let personal1 = PersonalCompetition()
let personal2 = PersonalCompetition()

let countChamp = Championship(countChampionship: [team1, team2, personal1, personal2])
