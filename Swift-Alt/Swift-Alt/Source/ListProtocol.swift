//
//  ListProtocol.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation

let ELEMENT_NOT_FOUND = -1

public protocol ListProtocol {
    
    associatedtype E;
    
    func clear();
    
    /// 元数 数量，默认返回 0
    var size:Int{get};
    
    /// 判断是否为空
    /// 默认实现：size == 0
    func isEmpty()->Bool;
    
    
    /// 是否包含这个元素
    /// - Parameter element
    /// 默认实现: indexOf(element: element) != nil
    func contains(element:E)-> Bool;
    
    /// 尾部追加
   /// - Parameter element
   /// 以提供默认实现：add(Index: size, element: element)
    func add(element:E);
    
    func get(index:Int)->E?;
    
    func set(index:Int,element:E)->E?
    
    func add(Index:Int,element:E);
    
    /// 删除index位置的元素,
    /// - Parameter Index
    ///
    func remove(Index:Int)->E?
    
    /// 查看元素索引, 找不到返回 nil
    /// - Parameter element
    /// - Returns  索引值, 若找不到返回 nil
    func indexOf(element:E)->Int?
}


public extension ListProtocol {
    
    var size:Int {
        return 0;
    }
    
    func contains(element:E)-> Bool{
       return indexOf(element: element) != nil
    }
    
    func isEmpty()->Bool {
        return size == 0
    }
    
   
    func add(element:E) {
        add(Index: size, element: element)
    }
}
