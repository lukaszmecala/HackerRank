import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    // Write your code here
init(a: [Int]){
    self.elements = a
    self.maximumDifference = 0
}

func computeDifference() {
    var diff = 0
    for i in 0...elements.count-1 {
    
        for j in 0...elements.count-1{
            diff = elements[i] - elements[j]
            guard i != j else {continue}
            maximumDifference = max(maximumDifference,abs(diff))
        }
    }

}



} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)

