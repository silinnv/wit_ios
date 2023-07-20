// MARK: - Task conditions
//
// 1. Write a function that takes a number (the height of the pyramid)
//    as input and returns a double array that should reflect
//    the following figure (for input data 3):
//
//  1
//  2 2
//  3 3 3
//
//    For 3, you need to return [[1], [2, 2], [3, 3, 3]]

// MARK: - Solution

// Beginning of the solution

func makePyramid(_ number: Int) -> Array<Array<Int>>{
    var resultArray = Array<Array<Int>>(repeating: [], count: number)
    for num in 1...number {
        let tmp = Array(repeating: num, count: num)
        resultArray[num - 1] = tmp
    }
    return resultArray
}

let pyramid = makePyramid(4)
print(pyramid)

// End of the solution
