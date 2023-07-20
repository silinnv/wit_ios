// MARK: - Task conditions
//
// 1. Given an array of numbers `nums`.
// 2. Change the array `nums` so that it becomes reversible.
//    For example [1, 2, 3] will become [3, 2, 1]

// MARK: - Solution

var nums = [57, 83, 29, 42, 95, 11, 78, 66, 36, 72]
// Beginning of the solution

//nums.reverse()

var tmp = Array<Int>()
for num in stride(from: nums.count - 1, to: -1, by: -1){
    tmp.append(nums[num])
}
nums = tmp
print(nums)
// End of the solution
