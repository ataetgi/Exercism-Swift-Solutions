
func flattenArray<T>(_ input: Array<Any?>) -> Array<T> {
    var result = Array<T>()
    for element in input {
        if let item = element as? T {
            result.append(item)
        } else if let array = element as? Array<Any?> {
            result += flattenArray(array)
        }
    }
    return result
}

