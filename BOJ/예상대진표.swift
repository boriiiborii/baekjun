import Foundation
//예상 대진표
//내 코드 testcase1번에서 오류가 난다.
func solution(_ n:Int, _ a:Int, _ b:Int) -> Int{
    var a = a
    var b = b
    for i in 1..<n/2 {
        if (a % 2 == 0) && (b == a-1) {
            return i
        }else if (b % 2 == 0) && (a == b-1) {
            return i
        }else {
            if a%2 == 0 {
                a /= 2
            }else {
                a = a/2+1
            }
            if b%2 == 0 {
                b /= 2
            }else {
                b = b/2+1
            }
            
        }
    }
    return 0
}

//다른사람 코드
func solution1(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var A = a
    var B = b
    var round = 0
    
    while true {
        if A % 2 == 0 {
            A /= 2
        } else {
            A = (A + 1) / 2
        }
        
        if B % 2 == 0 {
            B /= 2
        } else {
            B = (B + 1) / 2
        }
        
        round += 1
        
        if (A == B) {
            break
        }
    }
    
    return round
}
