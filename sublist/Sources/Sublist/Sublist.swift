import Foundation

enum Sublist {
    case equal, sublist, superlist, unequal
}

func classifier(listOne: [Int], listTwo: [Int]) -> Sublist {
    guard !listOne.elementsEqual(listTwo) else { return .equal}
    guard !listOne.reversed().elementsEqual(listTwo), !listTwo.reversed().elementsEqual(listOne) else { return .unequal }
    guard !listTwo.isEmpty else { return .superlist }
    guard !listOne.isEmpty else { return .sublist }
    let one = listOne.map({ String($0) + " "}).joined()
    let two = listTwo.map({ String($0) + " " }).joined()
    if one.contains(two) {
        return .superlist
    } else if two.contains(one) {
        return .sublist
    }
    return .unequal
}
