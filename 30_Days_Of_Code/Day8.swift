
// Enter your code here. Read input from STDIN. Print output to STDOUT

let n = Int(readLine()!)!

var phoneBook = [String:String]()


for _ in 1...n{
    let read = readLine()!.split(separator: " ").compactMap {String($0)}
    phoneBook[read[0]] = read[1]
}


for _ in 1...n {
    guard let name = readLine() else {break}
    
    if let phone = phoneBook[name] {
        print("\(name)=\(phone)")
    }else {
        print("Not found")
    }
    
}


