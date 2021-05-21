import Foundation

struct SimulatedRobot {
    enum Direction{
        case left, right
    }
    
    enum CompassDirection {
        case north, south, west, east
        func turn(_ d: Direction) -> Self {
            switch self {
            case .north:
                return d == .right ? .east : .west
            case .south:
                return d == .right ? .west : .east
            case .west:
                return d == .right ? .north : .south
            case .east:
                return d == .right ? .south : .north
            }
        }
    }
    
    enum Instruction: Character {
        case turnRight = "R", turnLeft = "L", advance = "A"
    }
    
    private(set) var bearing: CompassDirection? = nil
    private(set) var coordinates: [Int] = [0, 0]
    
    mutating func orient(_ direction: CompassDirection) {
        bearing = direction
    }
    
    mutating func turnRight() {
        bearing = bearing?.turn(.right)
    }
    
    mutating func turnLeft() {
        bearing = bearing?.turn(.left)
    }
    
    mutating func at(x: Int, y: Int) {
        coordinates = [x, y]
    }
    
    mutating func advance() {
        switch bearing {
        case .east:
            coordinates[0] = coordinates[0] + 1
        case .some(.north):
            coordinates[1] = coordinates[1] + 1
        case .some(.south):
            coordinates[1] = coordinates[1] - 1
        case .some(.west):
            coordinates[0] = coordinates[0] - 1
        case .none:
            break
        }
    }
    
    func instructions(_ input: String) -> [Instruction] {
        return input.compactMap({ Instruction(rawValue: $0) })
    }
    
    mutating func place(x: Int, y: Int, direction: CompassDirection) {
        at(x: x, y: y)
        orient(direction)
    }
    
    mutating func evaluate(_ input: String) {
        instructions(input).forEach { ins in
            switch ins{
            case .advance:
                advance()
            case .turnLeft:
                turnLeft()
            case .turnRight:
                turnRight()
            }
        }
    }
}
