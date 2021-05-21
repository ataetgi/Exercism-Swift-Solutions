import Foundation

class Scrabble {
    private var _score: Int = 0
    
    let points: [Int:[String]] = [
        1: ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
        2: ["D", "G"],
        3: ["B", "C", "M", "P"],
        4: ["F", "H", "V", "W", "Y"],
        5: ["K"],
        8: ["J", "X"],
        10: ["Q", "Z"]
    ]
    
    var score: Int {
        return _score
    }
    
    static func score(_ input: String?) -> Int {
        return Scrabble(input).score
    }
    
    func calculate(_ input: String?) -> Int {
        guard let input = input else { return 0 }
        Array(input).forEach { c in
            points.forEach { point, chars in
                if chars.contains(c.uppercased()) {
                    _score += point
                }
            }
        }
        return _score
    }
    
    init(_ input: String?) {
        _score = calculate(input)
    }
}
