import Foundation

  
var unsorted = ("")
let input: String
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
//                print("SORTED: \(unsorted)")
                swapcountperpass += 1
            }
        }
    } while swapcountperpass != 0
    print("sorted: \(unsorted)")
}


    if let input = readLine() {    
    unsorted = input
    var sortText = unsorted.components(separatedBy: ", ")
            sort(array: sortText)
          
 //   let sortedText = sortText.joined(separator: ", ")
   // print(sortedText)

    }
    
