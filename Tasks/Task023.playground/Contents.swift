// MARK: - Task conditions
//
// 1. Write a function called `generateMultiplier` that takes an integer as a parameter
//    and returns a closure.
//    The closure should capture the parameter and return a closure that multiplies
//    its captured value by a given number.
//
// For example:
// let multiplierByTwo = generateMultiplier(2)
// let result = multiplierByTwo(5)
// print(result) // Output: 10

// MARK: - Solution

// The beginning of the solution

func generateMultiplier(_ num1: Int) -> ((Int) -> Int) {
    return { num2 in
        return num1 * num2
    }
}

let multiplierByTwo = generateMultiplier(2)
let result = multiplierByTwo(5)
print(result)

// Completion of the solution
