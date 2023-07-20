// MARK: - Task conditions
//
// 1. Define an enumeration called `Shape` with cases `circle` and `rectangle`.
// 2. Add a computed property called `descript` that returns a string describing the shape.
//    Implement the property for both cases, such as "This is a circle" or "This is a rectangle."
// 3. Add a method called `calculateArea` that returns the area of the shape.
//    Implement the method for both cases, using appropriate formulas

// MARK: - Solution

// The beginning of the solution
enum Shape{
    case circle
    case rectangle
    
    var descript: String{
        switch self{
        case .circle:
            return "This is a circle"
        case .rectangle:
            return "This is a rectangle."
        }
    }
    
    func calculateArea(_ num: Int) -> Double{
        switch self {
        case .circle:
            return Double.pi * Double(num * num)
        case .rectangle:
            return Double (num * num)
        }
    }
}

let circleArea = Shape.circle.calculateArea(4)
let rectangleDescpirtion = Shape.rectangle.descript

print(circleArea)
print(rectangleDescpirtion)
// Completion of the solution
