import Foundation


struct Grains {
    static private let squareCount = 64
    enum GrainsError: Error {
        case inputTooHigh(_ message: String)
        case inputTooLow(_ message: String)
        init(_ number: Int) {
            let errorMessage = "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)"
            self = number > 64 ? .inputTooHigh(errorMessage) : .inputTooLow(errorMessage)
        }
    }
    static var total: UInt64 {
        var sum = UInt64()
        for i in 1...squareCount {
            sum += UInt64(try! square(i))
        }
        return sum
    }
    static func square(_ number: Int) throws -> UInt {
        guard 1...squareCount ~= number else { throw GrainsError(number) }
            
        return UInt(pow(2.0, Double(number - 1)))
    }
}
