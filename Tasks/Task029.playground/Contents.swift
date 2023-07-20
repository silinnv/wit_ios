// MARK: - Task conditions
//
// 1. Given a variable `name` of type `String?`
// 2. Safely expand the value into a new variable `unwrappedName`
//    If the value of `name` is `null`, set the default value: "Anonymous"

// MARK: - Solution

// The beginning of the solution

let name: String? = nil
let unwrappedName = name ?? "Anonymous"
print(unwrappedName)

// Completion of the solution
