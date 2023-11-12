
import Foundation
//두개 뽑아서 더하기
func solution(_ numbers:[Int]) -> [Int] {
    var result:[Int] = []

    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            var sum = numbers[i]+numbers[j]
            if !(result.contains(sum)) {
                result.append(sum)
            }
        }
    }
    
    result.sort()
    return result
}
