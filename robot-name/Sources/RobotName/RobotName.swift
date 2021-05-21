//Solution goes in Sources

class Robot {
    private let xs = (97...122).map({String(UnicodeScalar($0)).uppercased()}).joined()
    
    var robotNames = [String]()
    
    private var _name: String!
    var name: String {
        _name
    }
    
    func resetName() {
        let newName = createRandomName()
        while robotNames.contains(newName) {
            resetName()
        }
        _name = newName
        robotNames.append(newName)
    }
    
    private func createRandomName() -> String {
        return String((0..<2).map{ _ in xs.randomElement()! }) + "\(Int.random(in: 100...999))"
    }
    
    init() {
        self._name = createRandomName()
    }
    
}
