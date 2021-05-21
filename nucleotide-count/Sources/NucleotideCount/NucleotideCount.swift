//Solution goes in Sources
import Foundation

struct DNA {
    let strand: String
    private let symbols: [Character] = ["T", "A", "C", "G"]
    let countedSet: NSCountedSet

    init?(strand: String) {
        guard symbols.contains(where: { strand.contains($0) }) || strand.isEmpty
        else { return nil }
        countedSet = NSCountedSet(array: Array(strand))
        self.strand = strand
    }

    func count(_ string: String) -> Int {
        return countedSet.count(for: Character(string))
    }

    func counts() -> [String: Int] {
        let dic = symbols.reduce(into: [String:Int]()) { result, char in
            result[String(char)] = countedSet.count(for: char)
        }
        return dic
    }
}
