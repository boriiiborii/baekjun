import Foundation

//1463 1로만들기
var input = Int(readLine()!)!
var arr = [0,0,1,1]

if input < 4{
    print(arr[input])
    exit(0)
}

for i in 4...input{
    switch true{
    case (i%3 == 0) && (i%2 == 0):
        arr.append(min(arr[i/2], arr[i/3], arr[i-1])+1)
    case (i%3 == 0):
        arr.append(min(arr[i/3], arr[i-1])+1)
    case (i%2 == 0):
        arr.append(min(arr[i/2], arr[i-1])+1)
    default:
        arr.append(arr[i-1]+1)
    }
    
}
print(arr[input])

//왜 런타임 에러가 나는지 모르겠음
//let input = Int(readLine()!)!
//var arr = [0, 0, 1, 1] + Array(repeating: 0, count: input-3)
//if input < 4 {
//    print(arr[input])
//    exit(0)
//}
//
//for i in 4...input {
//    var (b, c): (Int, Int) = (9999999999, 9999999999)
//    let a = arr[i-1]+1
//    if i%3 == 0 {
//        b = arr[i/3]+1
//    }
//    if i%2 == 0 {
//        c = arr[i/2]+1
//    }
//    arr[i] = min(a, b, c)
////    print(i)
////    print(a, b, c)
////    print(arr)
//}
//print(arr[input])
//

import Foundation
//1463 나참 이게 왜 시간초과야?
let input = Int(readLine()!)!
var dic = [0:0,1:0,2:1,3:1]
if input <= 3 {
    print(dic[input]!)
}else {
    for i in 4...input {
        if (i%3 == 0) && (i%2 == 0) {
            dic[i] = min(dic[i/2]!, dic[i/3]!, dic[i-1]!)+1
        }else if (i%3 == 0) {
            dic[i] = min(dic[i/3]!, dic[i-1]!)+1
        }else if (i%2 == 0) {
            dic[i] = min(dic[i/2]!, dic[i-1]!)+1
        }else {
            dic[i] = dic[i-1]!+1
        }
    }
    print(dic[input]!)
}
