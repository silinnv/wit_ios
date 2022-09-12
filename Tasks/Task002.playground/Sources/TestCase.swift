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
	static func getTestCases(_ orderPrice: Any) -> [TestCase] {
		[
			TestCase(
				discript: "Check vairable `orderPrice` type",
				errorMessage: "The `orderPrice` variable of type `\(type(of: orderPrice))` must be of type `Double`",
				checker: { type(of: orderPrice) == Double.self }
			),
			TestCase(
				discript: "Check vairable `orderPrice` value",
				errorMessage: "The `orderPrice` variable is not equal to 2260.0"
			) {
				guard let orderPriceDouble = orderPrice as? Double else { return false }
				return orderPriceDouble == 2260.0
			}
		]
	}
}
