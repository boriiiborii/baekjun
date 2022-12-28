//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/29.
//

import Foundation
//1920 수찾기
//참조)https://sapjilkingios.tistory.com/86
//모범답안인듯하다 이해했고 다음에 이렇게 풀수있을거같다
let n = Int(readLine()!)!
var firstArr = readLine()!.split(separator: " ").map{Int($0)!}

let m = Int(readLine()!)!
var secondArr = readLine()!.split(separator: " ").map{Int($0)!}

firstArr.sort()

func binarySearch(_ arr: [Int], _ target: Int) -> Int{
    var start = 0
    var end = arr.count - 1

    while start <= end {
        let mid = (start + end) / 2
            if firstArr[mid] == target {
                return 1
            }else if firstArr[mid] > target {
                end = mid - 1
            }else if firstArr[mid] < target {
                start = mid + 1
            }
        }
        return 0
}


for i in 0..<m {
    print(binarySearch(firstArr, secondArr[i]))
}



////1920 수찾기 이진탐색을 이용하여 찾아보기..!(시간복잡도 O(nlog))
////이진탐색함수만들기(블로그참고하고 컨닝하고 따라하고,, 문제에 맞게 수정하구,,)
////와.. 얘도 시간초과 . 왜..?
//import Foundation
//func binaryFunc(_ arr: [Int], _ num: Int) -> Bool{
//    let mid = arr.count/2
//    if(arr.count == 1){
//        return (arr.first == num) ? true : false
//    }else if mid == 0{
//        return false
//    }else if (arr[mid] == num){
//        return true
//    }
//
//    let range = arr[mid] > num ? (0..<mid) : ((mid+1)..<arr.count)
//
//    return binaryFunc(Array(arr[range]), num)
//}
//
//let _ = Int(readLine()!)!
//var sampleInput = readLine()!.split(separator: " ").map{Int(String($0))!}
//let _ = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//sampleInput.sort()
//for i in input{
//    binaryFunc(sampleInput, i) ? print("1") : print("0")
//
//}



//import Foundation
////1920 수 찾기 얘는 시간초과뜸(contain함수는 O(n)이라 얘도 빠른편인데 왜 ....)
//let _ = Int(readLine()!)!
//var sampleInput = readLine()!.split(separator: " ").map{Int(String($0))!}
//let times = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//for i in 0..<times{
//    sampleInput.contains(input[i]) ? print("1") : print("0")
//}



//import Foundation
////1920 수찾기 에라토스테네스의 체로 풀어봤는데 범위가 -2^31 보다 크거나 같고 2^31보다 작다에서
////마이너스때문에 걸리기 때문에 이렇게는 못푼다 ! (O(1)제일 빠르지만 범위때문에 패스)
//let _ = Int(readLine()!)!
//var samplearr = Array(repeating: false, count: 100000/*여기서문제가생김*/)
//var sampleinput = readLine()!.split(separator: " ").map { Int(String($0))! }
//for i in sampleinput{
//    samplearr[i] = true
//}
//let _ = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//for i in input{
//    (samplearr[i] == true) ? print("1") : print("0")
//}
