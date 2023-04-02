import Foundation

//10995 별찍기-20

let input = Int(readLine()!)!

for i in 1...input{
    for j in 0..<input{
        if i % 2 == 0{
            print(" *",terminator: "")
        }else{
            (j == 0) ? print("*",terminator: "") : print(" *",terminator: "")
        }
    }
    print("")
}
