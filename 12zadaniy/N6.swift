import Foundation

/*
 6. Базовый класс – файл. Производные – звуковой файл и видео-файл. Создать класс Каталог, который может содержать оба вида объектов. Предусмотреть метод подсчета отдельно звуковых и видео-файлов (использовать оператор instanceof).
 */

class File {}

class SoundFile: File {}

class VideoFile: File {}

class Catalog {
    var catalog: [File]
    
    init(catalog: [File]) {
        self.catalog = catalog
    }

    func countSoundFile() -> Int {
        return catalog.filter {$0 is SoundFile}.count
    }
    
    func countVideoFile() -> Int {
        return catalog.filter {$0 is VideoFile}.count
    }
}

let soundFile1 = SoundFile()
let soundFile2 = SoundFile()
let soundFile3 = SoundFile()
let videoFile1 = VideoFile()

let catalogCount = Catalog(catalog: [soundFile1, soundFile2, soundFile3, videoFile1])

