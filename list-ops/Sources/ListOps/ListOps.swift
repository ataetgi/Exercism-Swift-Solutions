//Solution goes in Sources

final class ListOps {
    static func append<T>(_ first: [T],_ second: [T]) -> [T] {
        var result = first
        for i in second {
            result.append(i)
        }
        return result
    }
    
    static func concat<T>(_ arrays: [T]...) -> [T] {
        var result = [T]()
        for array in arrays {
            result = ListOps.append(result, array)
        }
        return result
    }
    
    static func filter<T>(_ first: [T],_ action: (T) -> (Bool)) -> [T] {
        var result = [T]()
        for i in first {
            if action(i) {
                result.append(i)
            }
        }
        return result
    }
    
    static func length<T>(_ array: [T]) -> Int {
        return array.count
    }
    
    static func map<T>(_ array: [T],_  action: (T) -> (T)) -> [T] {
        var result = [T]()
        for i in array {
            result.append(action(i))
        }
        return result
    }
    
    static func foldLeft<T: Numeric>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        guard !array.isEmpty else { return accumulated }
        var result = accumulated
        for i in array {
            result = combine(result, i)
        }
        return result
    }
    
    static func foldRight<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        guard !array.isEmpty else { return accumulated }
        var result = accumulated
        for i in array.reversed() {
            result = combine(i, result)
        }
        return result
    }
    
    static func reverse<T>(_ array: [T]) -> [T] {
        var result = [T]()
        for i in array {
            result.insert(i, at: 0)
        }
        return result
    }
}
