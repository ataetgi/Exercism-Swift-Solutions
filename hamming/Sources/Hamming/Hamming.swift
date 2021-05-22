//Solution goes in Sources

struct Hamming {
    static func compute(_ dna: String, against: String) -> Int? {
        guard dna.count == against.count else { return nil }
        if dna == against {
            return 0
        } else {
            let result = zip(dna, against)
            return result.filter({ $0 != $1 }).count
        }
    }
}
