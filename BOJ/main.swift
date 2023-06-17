
import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var arr = [Int]()
    
    var count = 0
    for i in 0..<ingredient.count {
        arr.append(ingredient[i])
        
        if arr.count >= 4 && arr[arr.count-4..<arr.count] == [1,2,3,1]{
            count += 1
            arr.removeLast(4)
        }
    }
    return count
}
