
import Foundation
//1813

var input = Int(readLine()!)!
var number = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in number.sorted().reversed(){
    if i == number.filter{$0 == i}.count {
        print(i)
        exit(0)
    }
}
if number.contains(0){
    print("-1")
}else{
    print("0")
}
