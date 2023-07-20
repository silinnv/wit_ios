// MARK: - Task conditions
//
// 1. Three numbers are received at the input of the function.
// 2. Create a `max` variable and store the maximum value in it.
// 3. Create a `min` variable and save the minimum value to it.
// 4. Do not use the standard min(_:_) max(_:_) functions

// MARK: - Solution

class Solution: SolutionProtocol {
	func minMax(_ a: Int, _ b: Int, _ c: Int) -> (Int, Int) {
		// Beginning of the solution
        let numbers = [a, b, c]
        let min = numbers.min()!
        let max = numbers.max()!
		
		// End of the solution
		return (min, max)
	}
}

// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases()
let testRunner = TestRunner(solution: Solution())
testRunner.runTests(testCases)
