import Foundation

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    // Print the even-indexed characters
    // Write your code here
    
    let strArray = Array(string)
     
        for i in 0...strArray.count - 1 {
            if(i % 2 == 0){
                print("\(strArray[i])",terminator: "")
            }
        }
    
    // Print a space
    print(" ", terminator: "")
    
    // Print the odd-indexed characters
    // Write your code here
     for i in 0...strArray.count - 1 {
            if(i % 2 != 0){
                print("\(strArray[i])",terminator: "")
            }
        }
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

