import Foundation
//프로그래머스-튜플 시간초과코드
func solution(_ s: String) -> [Int] {
    var result:[Int] = []
    var jsonString = s.replacingOccurrences(of: "{", with: "[").replacingOccurrences(of: "}", with: "]")
    
    var arr: [[Int]] = []
    
    if let data = jsonString.data(using: .utf8) {
        do {
            arr = try JSONDecoder().decode([[Int]].self, from: data)
        } catch {
            print("Error decoding array: \(error)")
        }
    }
    var i = 0
    while i < arr.count {
        if arr[i].count == i+1{
            let a = arr[i].filter{!result.contains($0)}
            
            result += a
            i += 1
        }
    }
    return result
}

print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))
