import Foundation

class Sieve {
    private(set) var primes: [Int] = []
    
    func primeNumbersUntil(_ n: Int) {
        var primeNumber = 1
        
        while primeNumber < n {
            if primeNumber.isPrime {
                primes.append(primeNumber)
            }
            primeNumber += 1
        }
    }
    
    init(_ count: Int) {
        primeNumbersUntil(count)
    }
}

extension Int {
    var isPrime: Bool {
        guard self >= 2 else { return false }
        guard self != 2 else { return true }
        guard self % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
    }
}
