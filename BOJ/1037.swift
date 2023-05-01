import Foundation
//1037 약수
let nCount = Int(readLine()!)!
let nArr = readLine()!.split(separator: " ").map{Int($0)!}

print("\(nArr.min()! * nArr.max()!)")
//인터넷 참조함.. ....... 진짜 별거아닌문제였네 ...
