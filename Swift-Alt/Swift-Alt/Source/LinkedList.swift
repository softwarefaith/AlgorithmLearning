//
//  LinkedList.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation


public struct LinkedList<Element>{
    
    public var size:Int = 0
    
    public var head:Node<Element>?
    public var tail:Node<Element>?
    
    public init(){}

}

extension LinkedList:ListProtocol {
    
    public typealias E = Element

    public func clear() {
        
    }
    
    public func isEmpty() {
        
    }
    
    public func add(element: Element) {
        
    }
    
    public func get(index: Int) -> Element? {
        return nil
    }
    
    public func set(index: Int, element: Element) -> Element? {
         return nil
    }
    
    public func add(Index: Int, element: Element) {
        
    }
    
    public func remove(Index: Int) -> Element? {
         return nil
    }
    
    public func indexOf(element: Element) -> Int? {
         return nil
    }

}



