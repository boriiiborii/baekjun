import Foundation
//점프와 순간이동
func solution(_ n: Int) -> Int {
    var n = n
    var result = 0
    while n > 0 {
        result += n % 2
        n = n % 2 == 0 ? n/2 : n-1
    }
    return result
}

//다른사람 코드
//재귀를 사용한 간단한 코드
import Foundation

func solution(_ n:Int) -> Int {
    if n == 1 { return 1 }
    if n % 2 == 0 { return solution(n/2) }
    return solution(n/2) + 1
}
