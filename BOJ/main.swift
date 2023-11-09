import Foundation
//이진 변환 반복하기 (시간초과)(다시풀기)
func solution(_ s:String) -> [Int] {
    var tempS = s
    var count = 0
    var result = 0
    
    while true {
        if tempS.contains("0") {
            let ten = countOne(s)
            tempS = tenToTwo(Int(ten)!)
            count += 1
        }else {
            result = twoToTen(tempS)
        }
    }
    
    
    return [count, result]
}

func twoToTen(_ n: String) -> Int {
    var nCount = n.count
    var result = 0
    var number = 0
    for i in n {
        if i == "1" {
            result += Int(pow(Double(2),Double(nCount-number)))
        }
        number += 1
    }
    return result
}

func tenToTwo(_ n: Int) -> String {
    var temp = n
    var result = ""
    while true {
        if temp < 2 {
            result += String(temp)
            break
        }
        result += String(temp%2)
        temp /= 2
    }
    return result
}

func countOne(_ s: String) -> String {
    var count = 0
     for i in s {
        if i == "1" {
            count += 1
        }
    }
    return String(count)
}
