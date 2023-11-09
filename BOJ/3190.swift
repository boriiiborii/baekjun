//
//  3190.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/13.
//

import Foundation
//3190 뱀

let mapSize = Int(readLine()!)!
var appleLocation = [(Int, Int)]()
var snakeLocation = [(Int, Int)]()
var directionChange = [(Int, String)]()
var time = 0
var currentDirection = 0
var head = (1,1)

//뱀이 D로 돌때마다 증가, L로돌면 감소
let direction = [(0,1), (1,0), (0,-1), (-1, 0)]

//사과 위치 저장
let appleNumber = Int(readLine()!)!
for _ in 0..<appleNumber {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let tuple = (input[0], input[1])
    appleLocation.append(tuple)
}

//뱀 방향 조정 input받기
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{$0}
    directionChange.append((Int(input[0])!, String(input[1])))
}

//게임오버
private func checkGameOver(head: (Int,Int)) -> Bool{
    return wall(head: head) || body(head: head)
}

private func wall(head: (Int,Int)) -> Bool {
    if head.0 == 0 || head.1 == 0 || head.0 == mapSize+1 || head.1 == mapSize+1{
        return true
    }
    return false
}

private func body(head: (Int, Int)) -> Bool {
    if snakeLocation.contains(where: { $0 == head }) {
        return true
    }
    return false
}

//시작 전 세팅
snakeLocation.append(head)
var go = direction[currentDirection]

//게임 시작
while true {
    
    //방향을 정해서 가
    let matchingDirectionChange = directionChange.filter { $0.0 == time }
    if let directionChangeTuple = matchingDirectionChange.first {
        if directionChangeTuple.1 == "D" {
            currentDirection = (currentDirection + 1) % 4
        } else {
            currentDirection = (currentDirection + 3) % 4
        }
        go = direction[currentDirection]
    }
    head = (head.0 + go.0, head.1 + go.1)
    time += 1
    //게임이 끝났는지 봐야함
    guard !checkGameOver(head: head) else {
        print(time)
        break
        
    }
    snakeLocation.append(head)
    
    //사과가 있을 경우
    //사과를 삭제
    if let index = appleLocation.firstIndex(where: { $0 == head }) {
        appleLocation.remove(at: index)
    }else {
        //사과가 없을 경우
        //꼬리를 삭제
        snakeLocation.removeFirst()
    }
}



