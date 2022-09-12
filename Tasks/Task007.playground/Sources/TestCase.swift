import Foundation

// MARK: - Test cases
//
// This file contains cases that test your code
// Do not make changes to the code below

public struct TestCase {
	let discript: String
	let errorMessage: String
	let inputData: (Int, Int, Int)
	let expectedResult: (Int, Int)
}

public extension TestCase {
	static func getTestCases() -> [TestCase] {
		[
			TestCase(
				discript: "All numbers are equal",
				errorMessage: "Incorrect result for equal numbers",
				inputData: (5, 5, 5),
				expectedResult: (5, 5)
			),
			TestCase(
				discript: "Two numbers are equal",
				errorMessage: "Incorrect result for two equal numbers",
				inputData: (3, 5, 3),
				expectedResult: (3, 5)
			),
			TestCase(
				discript: "Largest number is first input",
				errorMessage: "Incorrect result for largest number as first input",
				inputData: (10, 7, 5),
				expectedResult: (5, 10)
			),
			TestCase(
				discript: "Largest number is second input",
				errorMessage: "Incorrect result for largest number as second input",
				inputData: (3, 9, 6),
				expectedResult: (3, 9)
			),
			TestCase(
				discript: "Largest number is third input",
				errorMessage: "Incorrect result for largest number as third input",
				inputData: (4, 2, 8),
				expectedResult: (2, 8)
			),
			TestCase(
				discript: "Smallest number is first input",
				errorMessage: "Incorrect result for smallest number as first input",
				inputData: (-2, 7, 3),
				expectedResult: (-2, 7)
			),
			TestCase(
				discript: "Smallest number is second input",
				errorMessage: "Incorrect result for smallest number as second input",
				inputData: (5, -8, 4),
				expectedResult: (-8, 5)
			),
			TestCase(
				discript: "Smallest number is third input",
				errorMessage: "Incorrect result for smallest number as third input",
				inputData: (9, 6, -10),
				expectedResult: (-10, 9)
			),
			TestCase(
				discript: "Smallest negative number is third input",
				errorMessage: "Incorrect result for smallest negative number as third input",
				inputData: (-9, -6, -10),
				expectedResult: (-10, -6)
			)
		]
	}
}
