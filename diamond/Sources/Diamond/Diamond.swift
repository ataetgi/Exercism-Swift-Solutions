
class Diamond {
    static func makeDiamond(letter: Character) -> [String] {
        let alphabet = (0..<26).map({Character(UnicodeScalar("A".unicodeScalars.first!.value + $0)!)})
        guard let letterIndex = alphabet.index(of: letter) else { return [] }
        let letters = alphabet[...letterIndex]
        let half = letters.enumerated().map { (index, letter) -> String in
            let spaces = String(repeating: " ", count: letterIndex - index)
            let halfRow =  spaces + String(letter) + String(repeating: " ", count: index)
            let row = halfRow + halfRow.reversed().dropFirst()
            return row
        }
        return half + half.reversed().dropFirst()
    }
}
