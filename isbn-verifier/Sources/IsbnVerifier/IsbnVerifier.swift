enum IsbnVerifier {
    static func isValid(_ input: String) -> Bool {
        let trimmed = input.filter({ $0.isNumber || $0 == "X" })
        guard trimmed.count == 10 else { return false }
        guard trimmed.filter({ $0.isNumber }).count == 10 || trimmed.last == "X" else {
            return false
        }
        
        var total = 0
        trimmed.enumerated().reversed().forEach { i, c in
            total += (c.hexDigitValue ?? 10) * (i + 1)
        }
        return total % 11 == 0
    }
}
