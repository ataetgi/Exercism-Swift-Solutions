//Solution goes in Sources

struct ETL {
    static func transform(_ dic: Dictionary<Int, Array<String>>) -> Dictionary<String, Int> {
        var newDic = Dictionary<String, Int>()
        dic.forEach { point, letterArray in
            letterArray.forEach { letter in
                newDic[letter.lowercased()] = point
            }
        }
        return newDic
    }
}
