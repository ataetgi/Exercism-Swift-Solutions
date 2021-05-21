//Solution goes in Sources

class Garden {
    enum Plant: String {
        case radishes = "R"
        case clover = "C"
        case grass = "G"
        case violets = "V"
    }
    
    private let window1: String
    private let window2: String
    private var childrenNames = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    
    func plantsForChild(_ child: String) -> [Plant] {
        var plants = [Plant]()
        let i = Int(childrenNames.firstIndex(of: child) ?? 0) * 2
        let plantString = window1.substring(with: i..<i+2) + window2.substring(with: i..<i+2)
        plantString.forEach { c in
            plants.append(Plant(rawValue: String(c))!)
        }
        return plants
    }
    
    init(_ gardenInput: String, children: [String] = []) {
        let windows = gardenInput.split(separator: "\n")
        window1 = String(windows.first ?? "")
        window2 = String(windows.last ?? "")
        guard !children.isEmpty else { return }
        self.childrenNames = children.sorted()
    }
}

extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }
    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return String(self[startIndex..<endIndex])
    }
}
