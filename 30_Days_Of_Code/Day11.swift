import Foundation



var arr = [[Int]]()

for _ in 1...6 {
    guard let arrRowTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let arrRow: [Int] = arrRowTemp.split(separator: " ").map {
        if let arrItem = Int($0) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    arr.append(arrRow)
}

guard arr.count == 6 else { fatalError("Bad input") }


var hourglasses = 0

var maxHourglassesSum = Int.min
for i in 0...arr.count-3 {
    for j in 0...arr[i].count-3 {
        hourglasses = arr[i][j] + arr[i][j+1] + arr[i][j+2] +
                      arr[i+1][j+1] +
                      arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        
        maxHourglassesSum = max(maxHourglassesSum, hourglasses)
    }
}
print(maxHourglassesSum)
