//Solution goes in Sources
import Foundation

class Clock: CustomStringConvertible, Equatable {
    private var hours: Int
    private var minutes: Int

    init(hours: Int = 0, minutes: Int = 0) {
        self.hours = hours
        self.minutes = minutes
    }
    
    private func calculate(hours: Int, minutes: Int) -> String {
        var hour = (hours + minutes / 60) % 24
        var minute = minutes % 60
        if minute < 0 { minute += 60; hour -= 1 }
        hour = hour < 0 ? hour + 24 : hour
        return "\(String(format: "%02d:%02d", hour, minute))"
    }
    
    func add(minutes: Int = 0) -> Clock {
        self.minutes += minutes
        return self
    }
    
    func subtract(minutes: Int = 0) -> Clock {
        self.minutes -= minutes
        return self
    }
    
    static func == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs.description == rhs.description
    }
    
    var description: String {
        get {
            return calculate(hours: self.hours, minutes: self.minutes)
        }
    }
}
