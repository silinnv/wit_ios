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
    case circle(radius: Double)
    case rectangle(side: Double)
    
    var descript: String{
        switch self{
        case .circle:
            return "This is a circle"
        case .rectangle:
            return "This is a rectangle."
        }
    }
    
    func calculateArea() -> Double{
        switch self {
        case let .circle(radius):
            return Double.pi * radius
        case let .rectangle(side):
            return side * side
        }
    }
}

let circle = Shape.circle(radius: 8)
let area1 = circle.calculateArea()
let rectangleDescpirtion = Shape.rectangle(side: 10).descript

print(area1)
print(rectangleDescpirtion)
// Completion of the solution
