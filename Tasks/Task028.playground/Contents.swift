// MARK: - Task conditions
//
// 1. Declare a `Item` structure that has properties:
//    - `name` of the `String` type
//    - `weight` of the `Float` type.
// 2. Declare a `Box' structure that has properties:
//    - `color` of the `String' type
//    - `item` witch can either have or not have an `Item` type.
// 3. Implement the `Item` structure method `printDesctiption`,
//    which outputs a String like "(item name) weighing (weight) kg".
// 4. Implement the `put(_ item: Item)` method in the `Box' structure,
//    which puts the item in the structure.
//    If any item already exists, then a replacement occurs.
// 5. Implement the `takeOff() -> Item?` method in the `Box' structure,
//    which removes the item from the box and returns the value.

// MARK: - Solution

// The beginning of the solution

struct Item {
    let name: String
    let weight: Float
    
    func printDescpirtion(){
        print("\(self.name) weights \(self.weight) kg")
    }
}

struct Box {
    let color: String
    var item: Item?
    
    mutating func put(_ item: Item){
        self.item = item
    }
    
    mutating func takeOff() -> Item? {
        let tmp = self.item
        self.item = nil
        return tmp
    }
}

// Completion of the solution
