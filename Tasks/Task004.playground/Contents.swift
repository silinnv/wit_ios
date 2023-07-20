// MARK: - Task conditions
//
// 1. Create an Int variable `radius` with a value of 1
// 2. Create an Double variable `pi` with a value of 3.1415
// 3. Create a variable `len` and store the circumference in it
//    (calculated by the formula: l = 2 * pi * r)

// MARK: - Solution
//
// Beginning of the solution

let radius = 1
let pi = 3.1415
let len = 2 * pi * Double(radius)

// End of the solution

// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases(radius, pi, len)
TestRunner.runTests(testCases)

