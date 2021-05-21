//Solution goes in Sources

struct Hamming {
    static func compute(_ dna: String, against: String) -> Int? {
        guard dna.count == against.count else { return nil }
        if dna == against {
            return 0
        } else {
            let zip = zip(dna, against)
            return zip.filter({ $0 != $1 }).count
        }
    }
}
