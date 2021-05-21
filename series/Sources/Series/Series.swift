import Foundation
class Series {
    let stringNumber: String
    
    init(_ stringNumber: String) {
        self.stringNumber = stringNumber
    }
    
    func slices(_ length: Int) -> [[Int]] {
        var results = [[Int]]()
        var temp = stringNumber
        temp.forEach { n in
            let s = Array(temp.prefix(length))
            if s.count == length {
                let int = s.map({ Int($0.description)! })
                results.append(int)
                temp.removeFirst()
            }
        }
        return results
    }
}
