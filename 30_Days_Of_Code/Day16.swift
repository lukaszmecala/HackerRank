
import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}
func stringToInt(inputString: String) throws -> Int  {
    return try Int(inputString).map { $0 } ?? { throw StringToIntTypecastingError.BadString }()
    
}
/*
 * Read the input
 */
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
