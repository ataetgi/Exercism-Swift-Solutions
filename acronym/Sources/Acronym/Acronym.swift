import Foundation

class Acronym {
    static func abbreviate(_ phrase: String) -> String {
        let newStr = phrase.replacingOccurrences(of: "-", with: " ")
        var array = newStr.components(separatedBy: .whitespaces)
        array.enumerated().forEach({ index, str in
            str.enumerated().forEach { i, c in
                if c.isUppercase && c != str.first! && !Array(str)[i - 1].isUppercase {
                    array.insert(String(c), at: index + 1)
                }
            }
        })
        return array.compactMap({ $0.first?.uppercased() }).reduce("", {String($0) + String($1)})
    }
}

