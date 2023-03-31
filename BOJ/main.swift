import Foundation

//4821 페이지세기

while true{
    
    var arr = Array(repeating: false, count: Int(readLine()!)!)
    var input = readLine()!
    
    var split = input.split(separator: ",")
    print(split)
                
    for i in 0..<split.count{
        if split[i].contains("-"){
            
        }else{
            arr[Int(split[i])!] = true
        }
    }
    
    
    
    
    
}
