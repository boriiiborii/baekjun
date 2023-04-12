import Foundation

//1463 1로만들기
var input = Int(readLine()!)!
var arr = [0,0,1,1]

if input < 4{
    print(arr[input])
    exit(0)
}

for i in 4...input{
    switch true{
    case (i%3 == 0) && (i%2 == 0):
        arr.append(min(arr[i/2], arr[i/3], arr[i-1])+1)
    case (i%3 == 0):
        arr.append(min(arr[i/3], arr[i-1])+1)
    case (i%2 == 0):
        arr.append(min(arr[i/2], arr[i-1])+1)
    default:
        arr.append(arr[i-1]+1)
    }
    
}
print(arr[input])
