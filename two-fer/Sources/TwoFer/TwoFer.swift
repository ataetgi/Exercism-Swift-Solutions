//Solution goes in Sources

import Foundation

class TwoFer {
    
    static func twoFer(name: String = "") -> String {
        if name.isEmpty {
            return "One for you, one for me."
        } else {
            return "One for \(name), one for me."
        }
    }
    
}
