// MARK: - Task conditions
//
// 1. The string `message` is given.
// 2. Create a dictionary `counts', the keys of which are characters,
//    and the values are the number of occurrences in the string.
//    For example, for the string "abca", the dictionary will be ["a": 2, "b": 1, "c": 1]

// MARK: - Solution

let message = "⭐️👽👽🌕⭐️🌕🎲🌕"
// The beginning of the solution
var dictionary = Dictionary<Character, Int>()
for emoji in Array(message){
    if(dictionary.keys.contains(emoji)){
        dictionary[emoji]! += 1
    } else {
        dictionary[emoji] = 1
    }
}
print(dictionary)

// Completion of the solution
