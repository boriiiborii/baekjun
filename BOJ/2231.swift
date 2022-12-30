//
//  2231.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/31.
//

import Foundation
//2231 분해합
let num = Int(readLine()!)!

Outter:for a in 0...9{
    for b in 0...9{
        for c in 0...9{
            for d in 0...9{
                for e in 0...9{
                    for f in 0...9{
                        for g in 0...9{
                            let sum = a+b+c+d+e+f+g
                            if (a*1000000+b*100000+c*10000+d*1000+e*100+f*10+g)+sum == num{
                                print(a*1000000+b*100000+c*10000+d*1000+e*100+f*10+g)
                                break Outter
                            }
                            else if (a==9)&&(b==9)&&(c==9)&&(d==9)&&(e==9)&&(f==9)&&(g==9){
                                print(0)
                            }
                        }
            
                    }
                }
            }
        }
    }
}
