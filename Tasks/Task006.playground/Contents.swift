// MARK: - Task conditions
//
// 1. The variable `isSemaphoreGreen` of type Bool is given.
// 2. Declare a `semaphoreMessage` variable of type String
//    and assign it a value that depends on isSemaphoreGreen.
//    If the variable is true, then "Cross the road" otherwise "Stop"
// 3. Solve the problem in three ways using:
//    - `if-else`
//    - ternary operator
//    - `switch`

// MARK: - Solution
//
class Solution: SolutionProtocol {
	func semaphore(isSemaphoreGreen: Bool) -> (Bool, String) {
		// Beginning of the solution
        
        var semaphoreMessage: String
        
        if isSemaphoreGreen{
            
            semaphoreMessage = "Cross the road"
            
        } else {
            
            semaphoreMessage = "Stop"
        }
        
        //-------------------------------------------
        
        /*var semaphoreMessage = isSemaphoreGreen ? "Cross the road" : "Stop"*/
        
        //-------------------------------------------
        
        /*switch isSemaphoreGreen {
        case true:
            semaphoreMessage = "Cross the road"
            
        case false:
            semaphoreMessage = "Stop"
            
        default:
            "something is broken"
        }*/
        
        
		
		// End of the solution
		return (isSemaphoreGreen, semaphoreMessage)
	}
}

// MARK: - Tests
//
// The code for running tests
// Do not make changes to the code below

let testCases = TestCase.getTestCases()
let testRunner = TestRunner(solution: Solution())
testRunner.runTests(testCases)
