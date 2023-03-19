import Foundation

let num = Int(readLine()!)!
let squareLength = 4*(num-1)+1

if num == 1{
    print("*")
    exit(0)
}

for i in 1...squareLength{
    var temp : Int
    if num * 2 > i{
        temp = i
    }else{
        let difference = i - (num*2-1)
        temp = (num*2-1)-difference
    }
    
    
    if i == 1 || i == squareLength{
        for _ in 0..<squareLength-1{
            print("*" , terminator: "")
        }
    }else{
        for _ in 0..<temp/2{
            print("* ",terminator: "")
        }
        
        if temp%2 != 0{
            for k in 0...squareLength-4*(temp/2){
                switch k {
                case squareLength-4*(temp/2) :
                    print(" ", terminator: "")
                default :
                    print("*", terminator: "")
                }
            }
        }else{
            for _ in 0...squareLength-4*(temp/2){
                print(" ",terminator: "")
            }
        }
    }
    if ((temp/2)-1) >= 1{
        for _ in 0..<(temp/2)-1{
            print("* ",terminator: "")
        }
    }
    print("*")
}


