import Foundation

var sorted = ("")
print("Input words here:")

if let input = readLine() {
    sorted = input
    var sortText = sorted.components(separatedBy: ", ")
    sortText.sort()
    let sortedText = sortText.joined(separator: ", ")
    print(sortedText)
}
