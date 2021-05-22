import Foundation

class WordCount {
    let words: String
    func count() -> [String: Int] {
        var array = words.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted)
        array = array.filter({ !$0.isEmpty })
        let countedSet = NSCountedSet(array: array)
        let dict:[String:Int] = countedSet.allObjects.reduce(into: [:]) { dict, elem in
            dict[elem as! String] = countedSet.count(for: elem)
        }
        return dict
    }
    
    init(words: String) {
        self.words = words
    }
}

