//
//  DFS:BFS.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/08.
//

import Foundation
//너비우선탐색 구현하기
//노드 수(V), 간선 수(E)일떄
//시간복잡도) O(V+E)
let graph: [String: [String]] = [
    "A" : ["B", "C"],
    "B" : ["A", "D", "E"],
    "C" : ["A", "F"],
    "D" : ["B"],
    "E" : ["B"],
    "F" : ["C"],
]

func BFS(graph: [String: [String]], start: String) -> [String] {
    var visitedQueue: [String] = []
    var needVisitQueue: [String] = [start]
    while !needVisitQueue.isEmpty {
        let node: String = needVisitQueue.removeFirst()//DFS는 first를제거
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitQueue += graph[node] ?? []
    }
    
    return visitedQueue
}

print(BFS(graph: graph, start: "A"))

//-------------------------------------
//DFS
//노드 수(V), 간선 수(E)일떄
//시간복잡도) O(V+E)
let dgraph : [String : [String]] = [
    "A" : ["B", "C"],
    "B" : ["A","D","E"],
    "C" : ["A","F"],
    "D" : ["B"],
    "E" : ["B"],
    "F" : ["C"],
]

func DFS(graph : [String : [String]], start: String) -> [String] {
    var visited = [String]()
    var needVisit = [start]
    while !needVisit.isEmpty{
        let node = needVisit.removeLast() //DFS는 last를제거
        if visited.contains(node) {continue}
        visited.append(node)
        needVisit += dgraph[node] ?? []
    }
    return visited
}

print(DFS(graph: dgraph, start: "A"))

//참고)https://babbab2.tistory.com/106


