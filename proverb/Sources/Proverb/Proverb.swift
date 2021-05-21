import Foundation

extension Array where Element == String {
    
    func recite() -> String {
        guard !self.isEmpty else { return "" }
        guard self.startIndex != self.endIndex else { return "And all for the want of a \(self.first.unsafelyUnwrapped)." }
        
        var proverb = String()
        for index in indices.dropLast() {
            proverb.append("For want of a \(self[index]) the \(self[index+1]) was lost.\n")
        }
        
        proverb.append("And all for the want of a \(self.first.unsafelyUnwrapped).")
        return proverb
    }
    
}
