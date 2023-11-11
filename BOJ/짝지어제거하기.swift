import Foundation
//짝지어 제거하기
//내 코드(시간초과)
func solution(_ s:String) -> Int{
    var s = s.map{$0}
    while s != [] {
        var temp = ""
        for i in 0..<s.count {
            if temp == String(s[i]) {
                print(s[i])
                s.remove(at: i)
                print(s[i-1])
                s.remove(at: i-1)
                break
            }
            if i == s.count-1 {
                return 0
            }
            temp = String(s[i])
        }
    }
    return 1
}

print(solution("baabaa"))


//다른사람 코드
//내코드와 비교했을때 2중 반복문을 사용하지 않음
//스택형식으로 풀었음(이렇게 푸는 문제가 맞는거 같다)
//연속된 문자 문제들은 stack을 고려하여 접근하자
func solution1(_ s:String) -> Int{
    var str = Array(s)
    var result: [Character] = []
    let s_len = str.count

    for i in 0..<s_len {
        if !result.isEmpty && result.last == str[i] {
            result.removeLast()
        } else {
            result.append(str[i])
        }
    }
    return result.isEmpty ? 1 : 0
}

