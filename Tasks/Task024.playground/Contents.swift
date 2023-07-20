// MARK: - Task conditions
//
// 1. Write a recursive function called `fibonacci` that takes an integer as a parameter
//    and returns the n-th Fibonacci number

// MARK: - Solution

// The beginning of the solution
var list = [0, 1]
func fibonacci(_ num: Int) -> Int{
    switch num{
    case 2:
        return list.last!
    case 1:
        return 0
    case Int.min..<0:
        return -1
    default:
        list.append(list.last! + list[list.count - 2])
        return fibonacci(num - 1)
    }
}

print(fibonacci(9))



// Completion of the solution
