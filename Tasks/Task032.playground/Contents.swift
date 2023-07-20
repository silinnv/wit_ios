// MARK: - Task conditions
//
// 1. Write the function `getNumber(_:Int???) -> Int?` which takes an input parameter
//    of type `Int???` and returns values only if it exists.
//    Uses guard for optional binding

// MARK: - Solution

// The beginning of the solution

func getNumber(_ num:Int???) -> Int? {
    guard let unwrappedNum = num else {
        return nil
    }
    return unwrappedNum!
}

print(getNumber(nil))
print(getNumber(2222))

// Completion of the solution
