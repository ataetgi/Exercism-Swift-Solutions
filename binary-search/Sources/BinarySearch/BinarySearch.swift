import Foundation

enum BinarySearchError: Error {
    case unsorted
}

class BinarySearch<T: Equatable & Comparable> {
    private(set) var list: Array<T>
    
    var middle: Int {
        return (list.count-1) / 2
    }
    
    func searchFor(_ input: T) -> Int? {
        return binarySearch(list, input)
    }
    
    func binarySearch(_ inputArr:Array<T>, _ searchItem: T) -> Int? {
        var lowerIndex = 0
        var upperIndex = inputArr.count - 1

        while (true) {
            let currentIndex = (lowerIndex + upperIndex)/2
            if(inputArr[currentIndex] == searchItem) {
                return currentIndex
            } else if (lowerIndex > upperIndex) {
                return nil
            } else {
                if (inputArr[currentIndex] > searchItem) {
                    upperIndex = currentIndex - 1
                } else {
                    lowerIndex = currentIndex + 1
                }
            }
        }
    }
    
    init(_ array: [T]) throws {
        guard array == array.sorted() else { throw BinarySearchError.unsorted }
        list = Array(array)
    }
    
    
}
