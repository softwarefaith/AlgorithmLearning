//
//  selectSort.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/12/18.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation
/// 选择排序  -- 从小到大
public func selectedSort<Element>(_ array: inout [Element]) where Element:Comparable {
    guard array.count >= 2 else {
        return
    }
    //[1,end)
    //次数
    for end in (1..<array.count).reversed(){
        var max = array.first!
        var index = 0
        for begin in (1...end){
            if(array[begin]>max){
                //max = array[begin]
                index = begin
            }
        }
       // array[end] = max
        array.swapAt(index, end)
    }
}
