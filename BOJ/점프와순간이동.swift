import Foundation

func solution(_ n: Int) -> Int {
    var n = n
    var result = 0
    while n > 0 {
        result += n % 2
        n = n % 2 == 0 ? n/2 : n-1
    }
    return result
}
