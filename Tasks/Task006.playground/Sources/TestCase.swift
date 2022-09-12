import Foundation

// MARK: - Test cases
//
// This file contains cases that test your code
// Do not make changes to the code below

public struct TestCase {
	let discript: String
	let errorMessage: String
	let inputData: Bool
	let expectedResult: (Bool, String)
}

public extension TestCase {
	static func getTestCases() -> [TestCase] {
		[
			TestCase(
				discript: "Check message when semaphore is not green",
				errorMessage: "The value of the `semaphoreMessage` variable is incorrect",
				inputData: false,
				expectedResult: (false, "Stop")
			),
			TestCase(
				discript: "Check message when semaphore is green",
				errorMessage: "The value of the `semaphoreMessage` variable is incorrect",
				inputData: true,
				expectedResult: (true, "Cross the road")
			)
		]
	}
}
