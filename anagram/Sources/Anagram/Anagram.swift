class Anagram {
    let word: String
    
    init(word: String) {
        self.word = word
    }
    
    func match(_ array: [String]) -> [String] {
        return array.filter({word.lowercased().sorted().elementsEqual($0.lowercased().sorted()) && word.lowercased() != $0.lowercased()})
    }
    
}
