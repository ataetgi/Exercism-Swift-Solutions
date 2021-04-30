//Solution goes in Sources

class Year {
    
    let calendarYear: Int
    
    var isLeapYear: Bool {
        switch calendarYear {
        case let x where (x % 100) == 0 && (x % 400) != 0:
            break
        case let x where (x % 4) == 0:
            return true
        default:
            break
        }
        return false
    }
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
}
