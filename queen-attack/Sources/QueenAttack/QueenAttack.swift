import Foundation

class Queens: CustomStringConvertible {
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }
    
    let white: [Int]
    let black: [Int]
    
    var canAttack: Bool {
        return white[0] == black[0] || white[1] == black[1] ||
            abs(white[0] - white[1]) == abs(black[0] - black[1])
    }

    private var desk = (0...7).map({ _ in (0...7).map({ _ in "_" }) })
    
    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        guard white.count == 2, black.count == 2 else {
            throw InitError.incorrectNumberOfCoordinates
        }
        guard white + black == white.map(abs) + black.map(abs) else {
            throw InitError.invalidCoordinates
        }
        guard !white.elementsEqual(black) else {
            throw InitError.sameSpace
        }
        desk[white[0]][white[1]] = "W"
        desk[black[0]][black[1]] = "B"
        self.white = white
        self.black = black
    }
    
    var description: String {
        return desk.joined(separator: ["\n"])
            .joined(separator: " ")
            .replacingOccurrences(of: " \n ", with: "\n")
    }
}
