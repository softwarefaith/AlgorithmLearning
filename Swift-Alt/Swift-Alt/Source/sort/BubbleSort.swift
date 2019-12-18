//
//  BubbleSort.swift
//  Swift-Alt
//
//  Created by CaiCai on 2019/12/18.
//  Copyright © 2019 CaiCai. All rights reserved.
//

import Foundation

/// 从小到大
public func bubbleSort2<Element>(_ array: inout [Element]) where Element:Comparable {
    
    guard array.count >= 2 else {
        return
    }
    //[1,count): 遍历次数
    for  end in (1..<array.count).reversed() {
        // 比较
        var swap = false
        for begin in (1...end){
            if(array[begin - 1] > array[begin]){
                array.swapAt(begin - 1, begin)
                swap = true
            }
        }
        if !swap {
            return
        }
    }
}

public func bubbleSort<Element>(_ array: inout [Element]) where Element:Comparable {
    
    guard array.count >= 2 else {
        return
    }
    
    var end = array.count - 1
    while end > 0 {
        var sortedIdnex = 1
        for begin in (1...end){
            if(array[begin - 1] > array[begin]){
                array.swapAt(begin - 1, begin)
                sortedIdnex = begin
            }
        }
        end = sortedIdnex
    }
}
