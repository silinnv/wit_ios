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
	static func getTestCases(_ interstellarRaiting: Any, _ shrekRaiting: Any, _ maxRaiting: Any) -> [TestCase] {
		[
			TestCase(
				discript: "Check vairable `interstellarRaiting` type",
				errorMessage: "The `interstellarRaiting` variable of type `\(type(of: interstellarRaiting))` must be of type `Double`",
				checker: { type(of: interstellarRaiting) == Double.self }
			),
			TestCase(
				discript: "Check vairable `shrekRaiting` type",
				errorMessage: "The `shrekRaiting` variable of type `\(type(of: shrekRaiting))` must be of type `Double`",
				checker: { type(of: shrekRaiting) == Double.self }
			),
			TestCase(
				discript: "Check vairable `maxRaiting` type",
				errorMessage: "The `maxRaiting` variable of type `\(type(of: maxRaiting))` must be of type `Double`",
				checker: { type(of: maxRaiting) == Double.self }
			),
			TestCase(
				discript: "Check vairable `interstellarRaiting` value",
				errorMessage: "The `interstellarRaiting` variable is not equal to 8.9"
			) {
				guard let interstellarRaitingDouble = interstellarRaiting as? Double else { return false }
				return interstellarRaitingDouble == 8.9
			},
			TestCase(
				discript: "Check vairable `shrekRaiting` value",
				errorMessage: "The `shrekRaiting` variable is not equal to 8.3"
			) {
				guard let shrekRaitingDouble = shrekRaiting as? Double else { return false }
				return shrekRaitingDouble == 8.3
			},
			TestCase(
				discript: "Check vairable `maxRaiting` value",
				errorMessage: "The `maxRaiting` variable is not equal to 8.9"
			) {
				guard let maxRaitingDouble = maxRaiting as? Double else { return false }
				return maxRaitingDouble == 8.9
			}
		]
	}
}
