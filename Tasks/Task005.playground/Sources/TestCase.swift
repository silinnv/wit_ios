import Foundation

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
	static func getTestCases(_ leg1: Any, _ leg2: Any, _ area: Any, _ perimeter: Any, _ hypotenuse: Any) -> [TestCase] {
		[
			TestCase(
				discript: "Check vairable `leg1` type",
				errorMessage: "The `leg1` variable of type `\(type(of: leg1))` must be of type `Int`",
				checker: { type(of: leg1) == Int.self }
			),
			TestCase(
				discript: "Check vairable `leg2` type",
				errorMessage: "The `leg2` variable of type `\(type(of: leg2))` must be of type `Int`",
				checker: { type(of: leg2) == Int.self }
			),
			TestCase(
				discript: "Check vairable `area` type",
				errorMessage: "The `area` variable of type `\(type(of: area))` must be of type `Double`",
				checker: { type(of: area) == Double.self }
			),
			TestCase(
				discript: "Check vairable `perimeter` type",
				errorMessage: "The `perimeter` variable has an invalid type",
				checker: { type(of: perimeter) == Double.self || type(of: perimeter) == Int.self }
			),
			TestCase(
				discript: "Check vairable `hypotenuse` type",
				errorMessage: "The `hypotenuse` variable of type `\(type(of: hypotenuse))` must be of type `Double`",
				checker: { type(of: hypotenuse) == Double.self }
			),

			TestCase(
				discript: "Check vairable `leg1` value",
				errorMessage: "The `leg1` variable is not equal to 17"
			) {
				guard let leg1Int = leg1 as? Int else { return false }
				return leg1Int == 17
			},
			TestCase(
				discript: "Check vairable `leg2` value",
				errorMessage: "The `leg2` variable is not equal to 35"
			) {
				guard let leg2Int = leg2 as? Int else { return false }
				return leg2Int == 35
			},
			TestCase(
				discript: "Check vairable `area` value",
				errorMessage: "The `area` variable is not equal to 297.5"
			) {
				guard let areaDouble = area as? Double else { return false }
				return areaDouble == 297.5
			},
			TestCase(
				discript: "Check vairable `perimeter` value",
				errorMessage: "The `perimeter` variable is not equal to 104"
			) {
				((perimeter as? Double) == 104) || ((perimeter as? Int) == 104)
			},
			TestCase(
				discript: "Check vairable `hypotenuse` value",
				errorMessage: "The `hypotenuse` variable is not equal to 38.91015291668744"
			) {
				guard let hypotenuseDouble = hypotenuse as? Double else { return false }
				return String(format: "%.10f", hypotenuseDouble) == "38.9101529167"
			}
		]
	}
}
