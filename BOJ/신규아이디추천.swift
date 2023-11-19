import Foundation
//신규아이디 추천
//이 문제는 정규식으로 푸는것이 올바름
func solution(_ new_id:String) -> String {
    var id = new_id
    //1
    id = id.lowercased()
   
    //2
    var result = ""
    for char in id {
        if char.isLetter || char.isNumber || char == "-" || char == "_" || char == "." {
           result += String(char)
        }
    }
    if result != "" {
        id = result
    }
   
    //3
   while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    //4
    while(id.first == "." || id.last == "." ) {
        if id.last == "." {
            id.removeLast()
        }else if id.first == "." {
            id.removeFirst()
        }
    }
 
    //5
    if id == "" {
        id = "a"
    }
 
    //6
    if id.count > 15 {
        id = String(id.prefix(15))
        if id.last == "." {
            id.removeLast()
        }
    }
  
    //7
    if id.count < 3 {
        id = id + String(repeating: String(id).last!, count: 3-id.count)
    }
  
    return id
}

//다른사람 코드
func solution1(_ new_id:String) -> String {
    var myID: String = new_id

    //1차
    myID = myID.lowercased()

    //2차
    var newID: String = ""
    for i in myID {
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            newID.append(i)
        }
    }

    //3차
    while newID.contains("..") {
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }

    //4차
    while newID.hasPrefix(".") {
        newID.removeFirst()
    }

    while newID.hasSuffix(".") {
        newID.removeLast()
    }

    //5차
    if newID == "" {
        newID = "a"
    }

    //6차
    if newID.count >= 16 {
        let index = newID.index(newID.startIndex, offsetBy: 15)
        newID = String(newID[newID.startIndex..<index])
        if newID.hasSuffix(".") {
            newID.removeLast()
        }
    }

    //7차
    if newID.count <= 2 {
        while newID.count != 3 {
            newID = newID + String(newID.last!)
        }
    }

    return newID
}
