import Foundation
//비밀지도
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var arr1String: [String] = []
    var arr2String: [String] = []
    
    for number in 0..<n {
        arr1String.append(String(Int(arr1[number]), radix: 2))
        arr2String.append(String(Int(arr2[number]), radix: 2))
    }
    var result: [String] = []
    for i in 0..<n {
        var string1 = Array(arr1String[i])
        var string2 = Array(arr2String[i])
        var number1 = n - string1.count
        var number2 = n - string2.count
        if number1 != 0 {
            for _ in 0..<number1 {
                string1 = "0"+string1
            }
        }
        if number2 != 0 {
            for _ in 0..<number2 {
                string2 = "0"+string2
            }
        }
        var resultString = ""
        for i in 0..<n {
            if string1[i] == "1" || string2[i] == "1" {
                resultString += "#"
            }else {
                resultString += " "
            }
        }
        result.append(resultString)
    }
    return result
}

//다른사람 코드
//OR연산, String(repeating, count), reduce 사용.
func solution1(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []

    for i in 0..<n {
        var bitwise = String(arr1[i] | arr2[i], radix: 2)
        bitwise = String(repeating: "0", count: n-bitwise.count) + bitwise
        answer += [bitwise.reduce("", { $0 + ($1 == "1" ? "#" : " ") })]
    }

    return answer
}

