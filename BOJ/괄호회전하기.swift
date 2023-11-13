import Foundation

func solution(_ s:String) -> Int {
    //괄호 회전하기
    var s = s
    var count = 0
    var stack: [String] = []

    
    for _ in 0..<s.count {
        var n = false
        for bracket in s {
            
            switch bracket {
                case "}":
                if stack.last == "{" {
                    stack.removeLast()
                    n = true
                }
                case "]":
                if stack.last == "[" {
                    stack.removeLast()
                    n = true
                }
                case ")":
                if stack.last == "(" {
                    stack.removeLast()
                    n = true
                }
                default:
                stack.append(String(bracket))
            }
        }
        if stack.isEmpty && n == true{
            count += 1
        }
        let char = s.removeFirst()
        s = s + String(char)
        stack = []
    }
    return count
}

print(solution("}}}"))



//다른사람 코드

func solution1(_ s:String) -> Int {
    var answer: Int = 0
    var string = s
    var turnString = s

    //이 방법 생각도 못했던.... while으로 계속 돌면서 괄호가 있다면 공백으로 치환 후 또 돌리고 반복.
    for _ in 1...s.count {
       while string.contains("{}") || string.contains("[]") || string.contains("()") {
                string = string.replacingOccurrences(of: "{}", with: "")
                string = string.replacingOccurrences(of: "()", with: "")
                string = string.replacingOccurrences(of: "[]", with: "")
        }


        if string.count == 0 {
            answer += 1
        }

        string = turnString
        string.append(string.removeFirst())
        turnString = string
    }

    return answer
}

//다른사람 코드
func solution2(_ s:String) -> Int {
    var s = Array(s)
    var answer = 0

    for _ in 0..<s.count {
        var stack: [String.Element] = []
        for i in 0..<s.count {
            if s[i] == "(" || s[i] == "[" || s[i] == "{" {
                stack.append(s[i])
            } else {
                if s[i] == ")" && stack.last == "(" {
                    //여기서 popLast()가 나오는데
                    //removeLast()와 차이점은
                    //stack이 비어있따면 popLast()의 결과는 nil
                    //stack이 비어있따면 removeLast()의 결과는 에러.
                    //따라서 값이 확실히 있다고 보장할 수 없을땐 안전하게 popLast()를 써야한다.
                    stack.popLast()
                } else if s[i] == "]" && stack.last == "[" {
                    stack.popLast()
                } else if s[i] == "}" && stack.last == "{" {
                    stack.popLast()
                } else {
                    stack.append(s[i])
                }
            }
        }
        if stack == [] {
            answer += 1
        }
        s.append(s.first!)
        s.removeFirst()
    }

    return answer
}
