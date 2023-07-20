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

let leg1 = 17
let leg2 = 35
let area = Double(leg1) * Double(leg2) * 0.5
let hypotenuse = hypot(Double(leg1), Double(leg2))
let perimeter = Double(leg1) + Double(leg2) + hypotenuse

// End of the solution

// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases(leg1, leg2, area, perimeter, hypotenuse)
TestRunner.runTests(testCases)
