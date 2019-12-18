//
//  Tool.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/12/18.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation


extension Int {
    
    
    public static func randomIntNumbers(lower: Int = 0,upper: Int = 100,count:Int = 10,repeatCount:Int = 0) -> [Int] {
        
        var list:[Int] = Array<Int>.init(repeating: repeatCount == 0 ? 0 : Int.randomIntNumber(lower: lower, upper: upper),
            count: repeatCount == 0 ? count:repeatCount)
        
        for begin in (0..<(count-repeatCount)) {
            list[begin] = randomIntNumber(lower: lower, upper: upper)
        }
        return list
    }
    
    /*这是一个内置函数
     lower : 内置为 0，可根据自己要获取的随机数进行修改。
     upper : 内置为 UInt32.max 的最大值，这里防止转化越界，造成的崩溃。
     返回的结果： [lower,upper) 之间的半开半闭区间的数。
     */
    public static func randomIntNumber(lower: Int = 0,upper: Int = Int(UInt32.max)) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower)))
    }
    /**
     生成某个区间的随机数
     */
    public static func randomIntNumber(range: Range<Int>) -> Int {
        return randomIntNumber(lower: range.lowerBound, upper: range.upperBound)
    }
}
