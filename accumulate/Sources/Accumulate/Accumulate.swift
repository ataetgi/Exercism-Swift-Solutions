import Foundation

extension Array {
    func accumulate<T>(_ operation: (Element) -> T) -> Array<T> {
        var collection = Array<T>()
        for i in self {
            collection.append(operation(i))
        }
        return collection
    }
}
