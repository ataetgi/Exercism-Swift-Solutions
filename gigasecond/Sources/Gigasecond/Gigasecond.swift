//Solution goes in Sources
import Foundation

class Gigasecond {
    private let seconds: Double = 1_000_000_000
    var description: String? {
        get {
            return calculate(dateString: from)
        }
    }
    
    let from: String
    
    static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
    
    func calculate(dateString: String) -> String? {
        guard let date = Gigasecond.formatter.date(from: dateString)?.addingTimeInterval(seconds) else {return nil}
        return Gigasecond.formatter.string(from: date)
    }
    
    init?(from: String) {
        self.from = from
    }
}
