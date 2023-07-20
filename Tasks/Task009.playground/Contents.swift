// MARK: - Task conditions
//
// 1. Given an array of numbers `array`.
// 2. Calculate the sum of all the elements of the array
// 3. Put the result in the `sum` variable

// MARK: - Solution

let array = [57, 83, 29, 42, 95, 11, 78, 66, 36, 72]
// Beginning of the solution
let sum = array.reduce(0, +)
print(sum)
// End of the solution
