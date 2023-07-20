// MARK: - Task conditions
//
// 1. The function receives a year.
// 2. Declare an `isLeapYear` variable of the Bool type
//    and set it the appropriate value depending on whether
//    it is a leap year

// MARK: - Solution

class Solution: SolutionProtocol {
	func leapYear(_ year: Int) -> Bool {
		// Beginning of the solution
        var isLeapYear = !(year < 0 || year % 4 != 0 || (year % 100 == 0 && year % 400 != 0))
        
		return isLeapYear
	}
}

// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases()
let testRunner = TestRunner(solution: Solution())
testRunner.runTests(testCases)
