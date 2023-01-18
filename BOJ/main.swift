//
////  main.swift
////  BOJ
////import Foundation
//////1764 듣보잡
////let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
////var nohear = [String]()
////var nosee = [String]()
////var value = [String]()
////for i in 0..<nm[0]+nm[1]{
////    if i < nm[0]{
////        nohear.append(readLine()!)
////    }else if i >= nm[0]{
////        nosee.append(readLine()!)
////    }else{
////        continue
////    }
////}
////
////for i in nosee{
////    if nohear.contains(i)
////    {
////        value.append(i)
////    }
////}
////
////value.sort()
////print(value.count)
////for i in value{
////    print(i)
////}
//
////import Foundation
//////1018 체스판 다시 칠하기
////let input = readLine()!.split(separator: " ").map{Int(String($0))!}
////var arr = Array(repeating: Array(repeating: "B", count: input[1]), count: input[0])
////var acount = 0
////var bcount = 0
////
////
////for i in 0..<input[0]{
////    for j in 0..<input[1]{
////        if i == "W"{
////            j =
////        }
////    }
////}
//
//import Foundation
//
////라이노님의 FileIO 클래스
//final class FileIO {
//    private var buffer:[UInt8]
//    private var index: Int
//
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//        index = 0
//    }
//
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//
//        return buffer.withUnsafeBufferPointer { $0[index] }
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//
//        while now == 10
//            || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//
//        return sum * (isPositive ? 1:-1)
//    }
//
//    @inline(__always) func readString() -> String {
//        var str = ""
//        var now = read()
//
//        while now == 10
//            || now == 32 { now = read() } // 공백과 줄바꿈 무시
//
//        while now != 10
//            && now != 32 && now != 0 {
//                str += String(bytes: [now], encoding: .ascii)!
//                now = read()
//        }
//
//        return str
//    }
//}
//
//let file = FileIO()
//let n = file.readInt()
//var arr = [String]()
//
//for _ in 0..<n{
//    arr.append(file.readString())
//}
//var st = arr.joined()
//var str += "\(st)\n

//import Foundation
////1676 팩토리얼0의갯수
//let input = Int(readLine()!)!
//var a = input / 100
//
//print(input/5 + 2*a)
//

