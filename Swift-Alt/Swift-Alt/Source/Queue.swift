//
//  Queue.swift
//  Swift-Alt
//
//  Created by CaiCai on 2019/10/24.
//  Copyright © 2019 CaiCai. All rights reserved.
//

import Foundation

/// 队列协议
public protocol IQueue {
    
    associatedtype E
    
    var size:Int {get}
    
    func isEmpty() -> Bool;
    
    func clear();
    
    //入队
    func enQueue(_ element:E)
    //出队
    func deQueue()->E?
    //获取队列首元素
    func front()->E?
}
