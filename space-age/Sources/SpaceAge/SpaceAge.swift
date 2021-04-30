//Solution goes in Sources
import Foundation

class SpaceAge {
    
    let seconds: Double
    
    private enum OrbitalPeriods: Double {
        case earth = 31_557_600
        case mercury = 0.2408467
        case venus = 0.61519726
        case mars = 1.8808158
        case jupiter = 11.862615
        case saturn = 29.447498
        case uranus = 84.016846
        case neptune = 164.79132
        
        func callAsFunction() -> Double {
            return self.rawValue
        }
    }
    
    var onEarth: Double {
        return seconds / OrbitalPeriods.earth()
    }
    var onMercury: Double {
        return onEarth / OrbitalPeriods.mercury()
    }
    var onVenus: Double {
        return onEarth / OrbitalPeriods.venus()
    }
    var onMars: Double {
        return onEarth / OrbitalPeriods.mars()
    }
    var onJupiter: Double {
        return onEarth / OrbitalPeriods.jupiter()
    }
    var onSaturn: Double {
        return onEarth / OrbitalPeriods.saturn()
    }
    var onUranus: Double {
        return onEarth / OrbitalPeriods.uranus()
    }
    var onNeptune: Double {
        return onEarth / OrbitalPeriods.neptune()
    }
    
    
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    
}
