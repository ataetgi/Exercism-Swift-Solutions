import Foundation

class PhoneNumber: CustomStringConvertible {
    var number: String
    var areaCode: String
    var cleanNum: String {
        return String(number.dropFirst(3))
    }
    
    init(_ numberString: String) {
        var clean = numberString.filter({ $0.isNumber })
        if clean.first == "1" {
            clean.removeFirst()
        }
        if clean.count == 10 {
        number = clean
        } else {
            number = String(repeating: "0", count: 10)
        }
        areaCode = String(clean.prefix(3))
    }
    
    var description: String {
        return "(\(areaCode)) " + "\(cleanNum.prefix(3))-\(cleanNum.suffix(4))"
    }
}

