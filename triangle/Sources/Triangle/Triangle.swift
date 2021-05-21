//Solution goes in Sources
import Foundation

class Triangle{
    enum TriangleError: String {
        case ErrorKind = "ErrorKind"
        case Isosceles = "Isosceles"
        case Equilateral = "Equilateral"
        case Scalene = "Scalene"
    }
    
    let sides: [Double]
    
    var kind: String {
        guard sides.filter({ $0.isLessThanOrEqualTo(0)}).isEmpty else {
            return "ErrorKind"
        }

        if sides[0] + sides[1] < sides[2] ||
            sides[1] + sides[2] < sides[0] ||
            sides[2] + sides[0] < sides[1] {
            return TriangleError.ErrorKind.rawValue
        }
        
        let orderedSet = NSOrderedSet(array: sides)
        switch orderedSet.count {
        case 1:
            return TriangleError.Equilateral.rawValue
        case 2:
            return TriangleError.Isosceles.rawValue
        case 3:
            return TriangleError.Scalene.rawValue
        default:
            return TriangleError.ErrorKind.rawValue
        }
    }
    
    init(_ first: Double,_ second: Double,_ third: Double) {
        self.sides = [first, second, third].sorted()
    }
    
    
}
