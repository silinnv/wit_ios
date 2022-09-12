// MARK: - Test runner
//
// This file contains a test launcher for your code
// Do not make changes to the code below

public final class TestRunner {
	private let solution: SolutionProtocol

	public init(solution: SolutionProtocol) {
		self.solution = solution
	}

	public func runTests(_ testCases: [TestCase]) {
		var failureTestCases: [TestCase] = []
		let testCaseMessages = testCases
			.map { testCase in
				let message: String
				let result = solution.semaphore(isSemaphoreGreen: testCase.inputData)
				if result == testCase.expectedResult {
					message = "🟢 OK"
				} else {
					failureTestCases.append(testCase)
					message = "🟠 Error: \(testCase.errorMessage)"
				}
				return "\n\(testCase.discript):\n\(message)"
			}
			.joined(separator: "\n")
		
		print(startMessage)
		print(testCaseMessages)
		print("")
		print(resultTitleMessage)
		print(resultMessage(for: failureTestCases))
	}

	private func resultMessage(for failureTestCases: [TestCase]) -> String {
		if failureTestCases.isEmpty {
			return "🥳 All tests passed successfully. Congradulations!"
		} else {
			return "😿 Failed tests:\n" + failureTestCases
				.enumerated()
				.map { "\($0.offset + 1). \($0.element.discript). \($0.element.errorMessage)" }
				.joined(separator: "\n")
		}
	}

	private let startMessage = """
***********************
**       START       **
***********************
"""

	private let resultTitleMessage = """
***********************
**      RESULTS      **
***********************
"""
}
