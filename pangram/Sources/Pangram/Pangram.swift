class Pangram {
    static func isPangram(_ sentence: String) -> Bool {
        var alphabet = (0..<26).map({Character(UnicodeScalar("A".unicodeScalars.first!.value + $0)!)})
        sentence.uppercased().forEach { c in
            if let index = alphabet.firstIndex(of: c) {
                alphabet.remove(at: index)
            }
        }
        return alphabet.isEmpty
    }
}
