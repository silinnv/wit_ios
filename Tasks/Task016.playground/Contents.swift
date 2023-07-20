// MARK: - Task conditions
//
// 1. Two arrays `nums1` and `nums2' are given.
// 2. Create a new array `union`, which includes all the numbers
//    from both arrays without repetition.

// MARK: - Solution

let nums1 = [11, 78, 66, 36, 83]
let nums2 = [57, 83, 29, 42, 11]
// The beginning of the solution
let union = Array(Set(nums1+nums2))
print(union)

// Completion of the solution

