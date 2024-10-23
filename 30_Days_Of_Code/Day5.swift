import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var result: Int = 0
for i in 1...10{
    result = n * i
    print("\(n) x \(i) = \(result)")
}

