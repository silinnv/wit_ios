// MARK: - Test cases
//
// This file contains cases that test your code
// Do not make changes to the code below

public struct TestCase {
	let discript: String
	let errorMessage: String
	let checker: () -> Bool
}

public extension TestCase {
	static func getTestCases(_ radius: Any, _ pi: Any, _ len: Any) -> [TestCase] {
		[
			TestCase(
				discript: "Check vairable `radius` type",
				errorMessage: "The `radius` variable of type `\(type(of: radius))` must be of type `Int`",
				checker: { type(of: radius) == Int.self }
			),
			TestCase(
				discript: "Check vairable `pi` type",
				errorMessage: "The `pi` variable of type `\(type(of: pi))` must be of type `Double`",
				checker: { type(of: pi) == Double.self }
			),
			TestCase(
				discript: "Check vairable `len` type",
				errorMessage: "The `len` variable of type `\(type(of: len))` must be of type `Double`",
				checker: { type(of: len) == Double.self }
			),
			TestCase(
				discript: "Check vairable `radius` value",
				errorMessage: "The `radius` variable is not equal to 1"
			) {
				guard let radiusInt = radius as? Int else { return false }
				return radiusInt == 1
			},
			TestCase(
				discript: "Check vairable `pi` value",
				errorMessage: "The `pi` variable is not equal to 3.1415"
			) {
				guard let piDouble = pi as? Double else { return false }
				return piDouble == 3.1415
			},
			TestCase(
				discript: "Check vairable `len` value",
				errorMessage: "The `len` variable is not equal to 6.283"
			) {
				guard let lenDouble = len as? Double else { return false }
				return lenDouble == 6.283
			}
		]
	}
}
