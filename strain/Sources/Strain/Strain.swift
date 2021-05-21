import Foundation

extension Array {
    func keep(completion: (Element) -> Bool) -> [Element] {
        var newArray = [Element]()
        for i in self {
            if completion(i) {
                newArray.append(i)
            }
        }
        return newArray
    }
    
    func discard(completion: (Element) -> Bool) -> [Element] {
        keep { !completion( $0 ) }
    }
}
