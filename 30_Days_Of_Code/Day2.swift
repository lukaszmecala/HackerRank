import Foundation

/*
 * Complete the 'solve' function below.
 *
 * The function accepts following parameters:
 *  1. DOUBLE meal_cost
 *  2. INTEGER tip_percent
 *  3. INTEGER tax_percent
 */

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    // Write your code here
    var tip: Double = 0.0
    var tax: Double = 0.0
    
    var totalCost:Int = 0
    
    tip = Double(meal_cost / 100) * Double(tip_percent)
  


    tax = Double(tax_percent) / 100 * meal_cost
    
  
    totalCost = Int(round(meal_cost + tip + tax))
    
    
    print(totalCost)


}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
