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
	static func getTestCases(_ table: Any, _ chair: Any, _ sum: Any) -> [TestCase] {
		[
			TestCase(
				discript: "Check vairable `table` type",
				errorMessage: "The `table` variable of type `\(type(of: table))` must be of type `Int`",
				checker: { type(of: table) == Int.self }
			),
			TestCase(
				discript: "Check vairable `chair` type",
				errorMessage: "The `chair` variable of type `\(type(of: chair))` must be of type `Int`",
				checker: { type(of: chair) == Int.self }
			),
			TestCase(
				discript: "Check vairable `sum` type",
				errorMessage: "The `sum` variable of type `\(type(of: sum))` must be of type `Int`",
				checker: { type(of: sum) == Int.self }
			),
			TestCase(
				discript: "Check vairable `table` value",
				errorMessage: "The `table` variable is not equal to 19"
			) {
				guard let tableInt = table as? Int else { return false }
				return tableInt == 19
			},
			TestCase(
				discript: "Check vairable `chair` value",
				errorMessage: "The `chair` variable is not equal to 8"
			) {
				guard let chairInt = chair as? Int else { return false }
				return chairInt == 8
			},
			TestCase(
				discript: "Check vairable `sum` value",
				errorMessage: "The `sum` variable is not equal to 27"
			) {
				guard let sumInt = sum as? Int else { return false }
				return sumInt == 27
			}
		]
	}
}
