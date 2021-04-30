//Solution goes in Sources
import Foundation


class Squares {
    
    let number: Int
    
    var squareOfSum: Int {
        get {
            var total = 0
            for i in 1...number {
                total += i
            }
            return total * total
        }
    }
    var sumOfSquares: Int {
        get {
            var total = 0
            for i in 1...number {
                total += i * i
            }
            return total
        }
    }
    var differenceOfSquares: Int {
        get {
            return abs(sumOfSquares - squareOfSum)
        }
    }
    
    init(_ number: Int) {
        self.number = number
    }
}
