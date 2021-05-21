//Solution goes in Sources
import Foundation

struct Isogram {
    public static func isIsogram(_ input: String) -> Bool {
        let onlyLetters = input.filter({ $0.isLetter })
                                .map({ $0.lowercased() })
        let orderedSet = NSOrderedSet(array: Array(onlyLetters))
        return orderedSet.count == onlyLetters.count
    }
}
