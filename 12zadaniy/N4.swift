import Foundation

/*
 4. Базовый класс – печатные издания. Производные – книги и журналы. Создать класс КнижныйМагазин, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно книг и журналов (использовать оператор instanceof).
 */

class PrintedEdition {}

class Book: PrintedEdition {}

class Journal: PrintedEdition {}

class BooksStored {
    var booksStored: [PrintedEdition]
    
    init(booksStored: [PrintedEdition]) {
        self.booksStored = booksStored
    }
    
    func countBook() -> Int {
        return booksStored.filter {$0 is Book}.count
    }
    
    func countJournal() -> Int {
        return booksStored.filter {$0 is Journal}.count
    }
}

//var arrBooksStored: [PrintedEdition] = []
//
//for _ in 0...20 {
//    let book = Book()
//    arrBooksStored.append(book)
//}

let book1 = Book()
let book2 = Book()
let book3 = Book()
let book4 = Book()
let book5 = Book()
let journal1 = Journal()
let journal2 = Journal()
let journal3 = Journal()
let journal4 = Journal()

let bookStored = BooksStored(booksStored: [book1, book2, book3, book4, book5, journal1, journal2, journal3, journal4])
