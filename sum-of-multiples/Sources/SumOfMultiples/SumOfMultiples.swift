//Solution goes in Sources
import Foundation

struct SumOfMultiples {
    
    static func toLimit(_ limit: Int, inMultiples: [Int])  -> Int {
        
        guard limit > 0 else { return 0 }
        
        var allValidNumbers = Set<Int>()
        
        for i in 1..<limit {
            inMultiples.forEach { (num) in
                if i.isMultiple(of: num) {
                    allValidNumbers.insert(i)
                    print(i)
                }
                
            }
        }
        
        return allValidNumbers.reduce(0, +)
    }
    
}
