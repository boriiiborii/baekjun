import Foundation

let startPoint = readLine()!
let endPoint = readLine()!
var nodeNumbers = 0
var linkNumbers = 0

// 노드 갯수 입력받기
nodeNumbers = Int(readLine()!)!

// 노드의 관계(노선)을 알기위한 map 생성 (값 초기화 x)
var map = Array(repeating: Array(repeating: 0, count: nodeNumbers), count: nodeNumbers)
var nodeTupleArray: [(index: Int, name: String, fullName: String, latitude: Double, longitude: Double)] = []
var index = 0

if nodeNumbers > 0 {
    for _ in 0 ..< nodeNumbers {
        // 노드의 정보 저장
        let inputString = readLine()!
        let components = inputString.components(separatedBy: ",")
        if components.count >= 5 {
            let name = components[0].components(separatedBy: ":").last ?? ""
            let fullName = components[1].replacingOccurrences(of: "\"", with: "")
            let latitude = Double(components[3]) ?? 0.0
            let longitude = Double(components[4]) ?? 0.0
            nodeTupleArray.append((index, name, fullName, latitude, longitude))
            index += 1
        }
    }
}

linkNumbers = Int(readLine()!)!
var temp = 0
if linkNumbers > 0 {
    for _ in 0 ..< linkNumbers {
        let inputString = readLine()!
        let stopAreas = inputString.components(separatedBy: " ")
        for i in stride(from: 0, to: stopAreas.count, by: 2) {
            let components = stopAreas[i].components(separatedBy: ":")
            let nodeName = components[1]
            if let nodeIndex = findNodeIndex(forName: nodeName) {
                if i < stopAreas.count - 1 {
                    let nextComponents = stopAreas[i + 1].components(separatedBy: ":")
                    let nextNodeName = nextComponents[1]
                    if let nextNodeIndex = findNodeIndex(forName: nextNodeName) {
                        map[nodeIndex][nextNodeIndex] = 1
                    }
                }
            }
        }
    }
}


func bfs(_ start: String) {
    var queue = [start]
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
    }
}
 
func findNodeIndex(forName name: String) -> Int? {
    return nodeTupleArray.first { $0.name == name }?.index
}


