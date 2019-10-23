//
//  ListProtocol.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation

let ELEMENT_NOT_FOUND = -1


public protocol CountProtocol {

      /// 元数 数量，默认返回 0
     var size:Int{get};
    /// 判断是否为空
    /// 默认实现：size == 0
     func isEmpty()->Bool;
}

extension CountProtocol {
    var size:Int {
           return 0;
    }
    
    public func isEmpty()->Bool {
           return size == 0
       }
       
}

public protocol ListProtocol:CountProtocol{
    
    associatedtype E;
    
    mutating func clear();
    
    /// 是否包含这个元素
    /// - Parameter element
    /// 默认实现: indexOf(element: element) != nil
    func contains(element:E)-> Bool;
    
    /// 尾部追加
   /// - Parameter element
   /// 以提供默认实现：add(Index: size, element: element)
    mutating  func add(element:E);
    
    func get(index:Int)->E?;
    
    
    /// 重置某一位置的元数
    /// - Parameter index: 索引 从 0 开始
    /// - Parameter element
     @discardableResult
    mutating func set(index:Int,element:E)->E?
    
    /// 添加元数
    /// - Parameter index: 索引 从 0 开始
    /// - Parameter element
    mutating  func add(index:Int,element:E);
    
    /// 删除index位置的元素,
    /// - Parameter Index
    ///
    @discardableResult
    mutating func remove(index:Int)->E?
    
    /// 查看元素索引, 找不到返回 nil
    /// - Parameter element
    /// - Returns  索引值, 若找不到返回 nil
    func indexOf(element:E)  ->Int?
}


public extension ListProtocol {

    func contains(element:E)-> Bool{
       return indexOf(element: element) != nil
    }
    
    mutating func add(element:E) {
        add(index: size, element: element)
    }
}
