// MARK: - Task conditions
//
// 1. Write a function `sum()` that takes two numbers of type `Int?` as parameters
//    and returns the sum of parameters of type `Int?` if it 's possible.

// MARK: - Solution

// The beginning of the solution

func sum(_ num1: Int?, and num2: Int?) -> Int?{
    guard let num1 = num1, let num2 = num2 else { return nil }
        return num1 + num2
}

print(sum(1, and: 3))
print(sum(1, and: nil))
print(sum(nil, and: nil))
// Completion of the solution
