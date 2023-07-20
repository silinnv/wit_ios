// MARK: - Task conditions
//
// 1. Write a function called `printLength` that takes an optional string
//    as a parameter.
//    Inside the function, use optional binding to check if the string is not nil.
//    If it has a value, return length of the string. Otherwise return 0

// MARK: - Solution

// The beginning of the solution

func printLength(_ str: String?) -> Int{
    guard let str = str else { return -1 }
        return str.count
}

print(printLength(nil))
print(printLength(""))
print(printLength("12345"))
// Completion of the solution
