// MARK: - Task conditions
//
// 1. Create variables `table` and `chair` of type `Int'.
// 2. Set their values to 19 and 8, respectively.
// 3. Create a variable `sum` with a value equal to the sum of `table` `chair`

// MARK: - Solution
//
// Beginning of the solution

let table = 19
let chair = 8
let sum = chair + table

// End of the solution

// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases(table, chair, sum)
TestRunner.runTests(testCases)
