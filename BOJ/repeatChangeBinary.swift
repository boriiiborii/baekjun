import Foundation
//이진 변환 반복하기
func solution(_ s:String) -> [Int] {
    
    var s = s
    var count = 0, times = 0
    while s != "1" {
        let replaceCount = s.filter { $0 == "0" }.count
        count += replaceCount

        s = String(s.count - replaceCount, radix: 2)
        times += 1
    }
    
    return [times, count]
}
