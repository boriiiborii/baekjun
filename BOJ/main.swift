import Foundation

//11727 2xn 타일링2
let input = Int(readLine()!)!
var arr = Array(repeating: 0, count: input+1)
if input < 3 {
    let temp = [0, 1, 3, 5]
    print(temp[input])
}else {
    arr[1...3] = [1, 3, 5]
    for i in 3...input {
        arr[i] = (arr[i-1]+2*(arr[i-2]))%10007
    }
    print(arr[input])
}
