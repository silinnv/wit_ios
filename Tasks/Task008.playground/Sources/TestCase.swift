import Foundation

// MARK: - Test cases
//
// This file contains cases that test your code
// Do not make changes to the code below

public struct TestCase {
	let discript: String
	let errorMessage: String
	let inputData: Int
	let expectedResult: Bool
}

public extension TestCase {
	static func getTestCases() -> [TestCase] {
		[
			// Сommon leap year 
			TestCase(
				discript: "Check common leap year - divisible by 4 but not by 100, except if divisible by 400",
				errorMessage: "Expected a leap year but got a non-leap year",
				inputData: 2000,
				expectedResult: true
			),
			TestCase(
				discript: "Check common leap year - divisible by 4 but not by 100",
				errorMessage: "Expected a leap year but got a non-leap year",
				inputData: 2024,
				expectedResult: true
			),
			
			// Non-leap year
			TestCase(
				discript: "Check non-leap year - not divisible by 4",
				errorMessage: "Expected a non-leap year but got a leap year",
				inputData: 2019,
				expectedResult: false
			),
			TestCase(
				discript: "Check non-leap year - divisible by 100 but not by 400",
				errorMessage: "Expected a non-leap year but got a leap year",
				inputData: 1900,
				expectedResult: false
			),
			
			// Common leap year
			TestCase(
				discript: "Check common leap year - divisible by both 4 and 400",
				errorMessage: "Expected a leap year but got a non-leap year",
				inputData: 2400,
				expectedResult: true
			),
			
			// Non-leap year (considering negative years as invalid inputs)
			TestCase(
				discript: "Check non-leap year - negative year",
				errorMessage: "Expected a non-leap year but got a leap year",
				inputData: -200,
				expectedResult: false
			),
			
			// Common leap year - the minimum year that is commonly recognized as a leap year (1584)
			TestCase(
				discript: "Check common leap year - minimum recognized leap year",
				errorMessage: "Expected a leap year but got a non-leap year",
				inputData: 1584,
				expectedResult: true
			),
			
			// Non-leap year - the year before the minimum recognized leap year (1583)
			TestCase(
				discript: "Check non-leap year - year before the minimum recognized leap year",
				errorMessage: "Expected a non-leap year but got a leap year",
				inputData: 1583,
				expectedResult: false
			),
			
			// Common leap year - the maximum representable year in most programming languages (2147483644)
			TestCase(
				discript: "Check common leap year - maximum representable year in most programming languages",
				errorMessage: "Expected a leap year but got a non-leap year",
				inputData: 2147483644,
				expectedResult: true
			),
		]
	}
}
