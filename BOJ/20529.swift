import Foundation
//20529 가장 가까운 세사람의 심리적 거리
for _ in 0..<Int(readLine()!)! {
    _ = Int(readLine()!)!
    var result : [Int] = []
    let studentMBTI = readLine()!.split(separator: " ").map{String($0)}
    var gap = 0
    
    if hasTripleOccurrences(in: studentMBTI) {
        print(0)
        continue
    }
    
    for i in 0..<studentMBTI.count-2 {
        for j in i+1..<studentMBTI.count-1 {
            for k in i+2..<studentMBTI.count {
                gap += calculate(studentMBTI[i], studentMBTI[j])
                gap += calculate(studentMBTI[j], studentMBTI[k])
                gap += calculate(studentMBTI[k], studentMBTI[i])
                result.append(gap)
                gap = 0
            }
        }
    }
    print(result.min()!)
}



func calculate(_ a:String, _ b:String) -> Int {
    var count = 0
    for i in 0..<a.count {
        if a[a.index(a.startIndex, offsetBy: i)] != b[b.index(b.startIndex, offsetBy: i)] {
            count += 1
        }
    }

    return count
}


func hasTripleOccurrences<T: Hashable>(in array: [T]) -> Bool {
    var frequencyDict = [T: Int]()

    // 배열의 각 원소 빈도수를 계산
    for element in array {
        if let count = frequencyDict[element] {
            frequencyDict[element] = count + 1
        } else {
            frequencyDict[element] = 1
        }
    }

    // 빈도수가 3 이상인 값이 있는지 확인
    return frequencyDict.values.contains { $0 >= 3 }
}

