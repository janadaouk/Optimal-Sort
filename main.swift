import Foundation

  
var unsorted = [String]()
var input: String!
print("Input words here:")


// used to swap spots of items in a string
func swap(words: inout [String], firstIndex: Int, secondIndex: Int) {

    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp
}

// when comparing strings swift already compares them letter by letter so no need for a for loop
// To compare them, swift converts them to their assigned ascii value
// upper and lower cases have different ascii values, so to ensure fair comparison we can either make them all uppercase or all lowercase
func compareString(stringOne: String, stringTwo: String) -> Bool {

    let firstString  = stringOne.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let secondString = stringTwo.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    if firstString > secondString {
        return true
    }
    return false
}

// actually sorts the string using bubble sort method
func sort(array:[String]) {
    var unsorted = array
    var swapcountperpass = 0
    
    repeat {
    
        swapcountperpass = 0
        for index in 0 ..< unsorted.count - 1  {
            let element = unsorted[index]
            let nextelement = unsorted[index + 1]
            
            if compareString(stringOne: element, stringTwo: nextelement) == true {
                swap(words: &unsorted, firstIndex: index, secondIndex: index+1)
                swapcountperpass += 1
            }
        }
    } while swapcountperpass != 0
    let sortedText = unsorted.joined(separator: "\n")

    print(sortedText)
}
// keeps appending the inserted strings to the unsortedstring until you enter an empty one
repeat {
    input = readLine()!    
    unsorted.append(input)
} while input != ""

// removes the empty last one which then triggers the sorting function
unsorted.removeLast()
// var sortText = unsorted.components(separatedBy: "\n")
sort(array: unsorted)

//    let sortedText = unsorted.joined(separator: "\n ")
//print(sortedText)

    
    
    
