// MARK: - Task conditions
//
// 1. Given an array of numbers `nums`.
// 2. Create a new array `sortedNums`, where the even numbers come first,
//    followed by the odd ones. Try to keep the order of the even and odd
//    numbers of the original array

// MARK: - Solution

let nums = [57, 83, 29, 42, 95, 11, 78, 66, 36, 72]
// Beginning of the solution
let oddNums = nums.filter{num in
    return num % 2 != 0
}
let evenNums = nums.filter{num in
    return num % 2 == 0
}
let resultNum = evenNums + oddNums
print(resultNum)

// End of the solution
