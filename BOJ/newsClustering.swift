//
//  newsClustering.swift
//  BOJ
//
//  Created by leehwajin on 2023/06/12.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    var safeStr1 = str1.uppercased()
    var safeStr2 = str2.uppercased()
    var arr1 = Array(safeStr1)
    var arr2 = Array(safeStr2)
    var result1 = [String]()
    var result2 = [String]()
    
    //---------------------문자열 두글자로 끊는 코드---------------------
    //마이너스1하는 이유는 문자일경우 마지막 요소는 두글자로 끊을 수 없기 때문
    for i in 0..<arr1.count-1 {
        if isEnglish(arr1[i]) && isEnglish(arr1[i+1]) && !(i==arr1.count) {
            result1.append(String("\(arr1[i])\(arr1[i+1])"))
        }else{
            continue
        }
    }
    
    for i in 0..<arr2.count-1 {
        if isEnglish(arr2[i]) && isEnglish(arr2[i+1]) && !(i==arr2.count) {
            result2.append(String("\(arr2[i])\(arr2[i+1])"))
        }else{
            continue
        }
    }
    
    print(result1)
    print(result2)
    //---------------------둘다 공집합이면 65536리턴---------------------
    if result1.isEmpty && result2.isEmpty {
        return 65536
    }
    
    //---------------------공통된 요소 갯수 파악---------------------
    //ignore은 중복된 j의 인덱스를 받아옴으로써 *중복된 갯수가 ignore.count갯수가 된다*
    var ignore = [Int]()
    for i in 0..<result1.count{
        print("-----------i = \(i)-----------")
        for j in 0..<result2.count{
            print("j = \(j)")
            //result2[j]가 contains에 포함이 된다면 넘어가
            if ignore.contains(j) {
                print("ignore.contains\(j)")
                continue
            }
            //result2[j]가 result1[i]와 같다면 append하고 i포문 다시돌기
            if result1[i] == result2[j] {
                //두번째 리절트의 인덱스값을 저장하고 다음 i가 돌때 j는 무시할 수 있도록 조치
                ignore.append(j)
                print("ignore.append\(j)")
                break
            }
        }
    }
    print(ignore)
    return Int(Double(ignore.count)/Double((result1.count + result2.count - ignore.count))*Double(65536))
}


//중복 체크
func isEnglish(_ char:Character) -> Bool {
    let englishAlphabet = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    return englishAlphabet.contains(UnicodeScalar(String(char))!)
}

print(solution("AAbbaa_AAbb", "BBB"))

