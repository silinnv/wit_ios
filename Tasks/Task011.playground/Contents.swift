// MARK: - Task conditions
//
// 1. Given an array of numbers `nums`.
// 2. Create a new array from `nums`, excluding even values from it.

// MARK: - Solution

let nums = [57, 83, 29, 42, 95, 11, 78, 66, 36, 72]
// Beginning of the solution
let resultArray = nums.filter{ num in
    return num % 2 != 0
}
print(resultArray)

// End of the solution
