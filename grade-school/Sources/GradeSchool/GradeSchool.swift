//Solution goes in Sources

class GradeSchool {
    
    private(set) var roster: [Int: [String]]
    
    var sortedRoster: [Int: [String]] {
        var sorted = [Int: [String]]()
        roster.sorted(by: { $0.key < $1.key }).forEach { grade, names in
            sorted[grade] = names.sorted()
        }
        return sorted
    }
    
    init() {
        roster = [:]
    }
    
    func addStudent(_ name: String, grade: Int) {
        if roster[grade] != nil {
            roster[grade]?.append(name)
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}
