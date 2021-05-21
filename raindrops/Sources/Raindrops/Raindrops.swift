//Solution goes in Sources

struct Raindrops {
    
    private let number: Int
    private var _sounds = String()
    
    var sounds : String {
        return self._sounds.isEmpty ? String(self.number) : _sounds
    }
    
    private let factors = [3,5,7]
    private let array = ["Pling", "Plang", "Plong"]
    
    init(_ input: Int) {
        self.number = input
        factors.enumerated().forEach { f in
            if input % f.element == 0 {
                self._sounds.append(array[f.offset])
            }
        }
    }
}
