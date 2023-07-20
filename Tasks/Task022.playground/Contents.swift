// MARK: - Task conditions
//
// 1. Create a function called `swapValues` that takes two integer parameters
//    and swaps their values using the `inout` keyword

// MARK: - Solution

// The beginning of the solution
func swapValues(_ num: inout Int){
    num += 1
}

var num1 = 10
var num2 = 4
swapValues(&num1)
swapValues(&num2)
print(num1, num2)


// Completion of the solution
