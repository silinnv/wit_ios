import Foundation

// MARK: - Task conditions
//
// 1. Declare the variables of the right triangle legs `leg1` and `leg2`
//    of the Int type and initialize them with the values 17 and 35.
// 2. Save the area of the triangle to the variable `area`.
// 3. Save the perimeter to the variable `perimeter`.
// 4. Save the hypotenuse to the `hypotenuse` variable

// MARK: - Solution
//
// Beginning of the solution

let leg1: Int = 17
let leg2: Int = 35

var area: Double = 0.5 * Double(leg1) * Double(leg2)
print("Area of the right triangle:  \(area)")

var hypotenuse:Double = (sqrt(pow(Double(leg1), 2) + pow(Double(leg2), 2)))
//print("Hypotenuse of the right triangle:  \(hypotenuse)")

let roundedHypotenuse = String (format: "%.2f", hypotenuse)
print("Perimeter of the right triangle:  \(roundedHypotenuse)")

var perimeter: Double = Double(leg1) + Double(leg2) + hypotenuse
//print("Perimeter of the right triangle:  \(perimeter)")

// End of the solution

let roundedPerimeter = String (format: "%.2f", perimeter)
print("Perimeter of the right triangle:  \(roundedPerimeter)")
// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases(leg1, leg2, area, perimeter, hypotenuse)
TestRunner.runTests(testCases)
