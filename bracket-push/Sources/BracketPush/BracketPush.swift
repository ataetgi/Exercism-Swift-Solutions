class BracketPush {
    static private let brackets:[Character:Character] = ["}":"{", "]":"[", ")":"("]
    static func paired(text: String) -> Bool {
        var result = String()
        for c in text {
            if brackets.values.contains(c) {
                result.append(c)
            } else if brackets.keys.contains(c) {
                if result.popLast() != brackets[c] {
                    return false
                }
            }
        }
        return result.isEmpty
    }
}
