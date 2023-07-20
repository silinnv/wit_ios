// MARK: - Task conditions
//
// 1. An array of tuples is given.
// 2. Create a dictionary from it, where the name will be used as the key,
//    and an array of grades will be used as the value

// MARK: - Solution

let students = [
	("Alice", [9, 8, 7, 10, 11, 12, 9, 8, 9, 10]),
	("Bob", [10, 11, 12, 9, 8, 7, 9, 10, 11, 12]),
	("Charlie", [7, 8, 9, 10, 11, 12, 9, 8, 7, 6]),
	("David", [11, 12, 9, 8, 7, 6, 9, 10, 11, 12]),
	("Emily", [8, 9, 10, 11, 12, 9, 8, 9, 10, 11]),
	("Frank", [12, 9, 8, 7, 6, 9, 10, 11, 12, 9]),
	("Grace", [9, 10, 11, 12, 9, 8, 9, 10, 11, 12]),
	("Hannah", [10, 11, 12, 9, 8, 7, 9, 10, 11, 12]),
	("Isaac", [7, 8, 9, 10, 11, 12, 9, 8, 7, 6]),
	("Julia", [11, 12, 9, 8, 7, 6, 9, 10, 11, 12])
]
// The beginning of the solution
let dictionary = students.reduce(into: [:]) { $0[$1.0] = $1.1 }
print(dictionary)


// Completion of the solution
