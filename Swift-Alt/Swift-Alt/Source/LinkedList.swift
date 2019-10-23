//
//  LinkedList.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation


/// 双列表
public struct LinkedList<Element:Equatable>{
    
    public final class Node<Value>{
        
        public var value:Value
        public var next:Node?
        
        public init(value:Value, next: Node? = nil){
            self.value = value
            self.next = next
        }
        
        deinit {
            print("Node deinit \(self.description)")
        }
    }

    public var size:Int = 0
    
    public var head:Node<Element>?
    public var tail:Node<Element>?
    
    public init(){}

}


extension LinkedList:ListProtocol {
    
    public typealias E = Element

    public func clear() {
        
    }
    
    public func add(element: Element) {
        
    }
    
    public func get(index: Int) -> Element? {
        return nil
    }
    
    public func set(index: Int, element: Element) -> Element? {
         return nil
    }
    
    public func add(index Index: Int, element: Element) {
        
        
        
    }
    
    public func remove(index Index: Int) -> Element? {
         return nil
    }
    
    public func indexOf(element: Element) -> Int? {
         return nil
    }

}


//MARK: Debug
extension LinkedList.Node:CustomStringConvertible {
    
    public var description: String {
        return "Node:\(value)"
    }
}

extension LinkedList.Node:CustomDebugStringConvertible {
    public var debugDescription: String {
       
        if let n = self.next {
            return "\(value)--->\(n.description)"
        }
        return "\(value)"
    }
}
