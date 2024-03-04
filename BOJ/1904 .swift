//
//  1904 .swift
//  BOJ
//
//  Created by leehwajin on 2024/02/26.
//

import Foundation
//1904 01타일
let input = Int(readLine()!)!
var dp = [0, 1, 2, 3]
if input < 4 {
    print(dp[input])
}else {
    for i in 4...input {
        dp.append((dp[i-2]+dp[i-1])%15746)
    }
    print(dp[input])
}
