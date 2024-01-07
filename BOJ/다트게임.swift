import Foundation
func solution(_ dartResult:String) -> Int {
    var arr = [String]()
    var temp = ""
    var count = 0
    var isTen = false
    //각 요소들을 분리해서 담기
    for i in dartResult {
        if arr.last == "1" && i.isNumber && temp.first == "0" {
            arr[arr.count-1] = arr.last! + temp
            temp = ""
        }
        if (i.isNumber && !temp.isEmpty) {
            arr.append(temp)
            temp = ""
        }
        temp += String(i)
        count += 1
        if dartResult.count == count {
            if arr.last == "1" && temp.first == "0" {
                arr[arr.count-1] = arr.last! + temp
            }else {
                arr.append(temp)
            }
        }
    }
    print(arr)
    
    var star = false
    var answer = 0
    while !arr.isEmpty {
        var str = arr.removeLast()
        let num = str.filter{$0.isNumber}
        var result = Int(num)!
        str = str.replacingOccurrences(of: num, with: "")
        let e = str.removeFirst()
        switch e {
            case "D" :
            result = Int(pow(Double(num)!, 2))
            case "T" :
            result = Int(pow(Double(num)!, 3))
            default :
            break
        }
        
        //
        print(result)
        print(star)
        
        if star == true {
            result *= 2
        }
        
        
        //
        print(result)
        
        star = false
        if !str.isEmpty {
            if str == "*" {
                result *= 2
                star = true
            }else {
                result *= -1
            }
        }
        
        
        answer += result
        
        
        //
        print(answer)
    }

    return answer
}
