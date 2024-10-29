import Foundation



guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }



func maxConsecutive (_ n:Int){
    var binary = String(n, radix: 2)

let result = binary.split(separator: "0").map {num in num.compactMap{$0.wholeNumberValue}.reduce(0, +)}.max()
print(result!)
}


maxConsecutive(n)
