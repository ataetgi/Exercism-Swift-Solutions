//Solution goes in Sources
import Foundation


class Bob {
    enum Answers: String {
        case whatever = "Whatever."
        case sure = "Sure."
        case whoa = "Whoa, chill out!"
        case fine = "Fine. Be that way!"
        
        func callAsFunction() -> String {
            return self.rawValue
        }
        
    }
    
    static func hey(_ input: String) -> String {
        let myInput = input.trimmingCharacters(in: .whitespaces)
        guard !myInput.isEmpty else { return Answers.fine() }
        
        let onlyLetters = myInput.filter({ $0.isLetter })
        print(onlyLetters)
        if onlyLetters == onlyLetters.uppercased() && !onlyLetters.isEmpty {
            return Answers.whoa()
        } else if myInput.last == "?" {
            return Answers.sure()
        }
        
        return Answers.whatever()
    }
}
