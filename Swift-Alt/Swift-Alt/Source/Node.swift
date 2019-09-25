//
//  Node.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation

public class Node<Value>{
    
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

extension Node:CustomStringConvertible {
    
    public var description: String {
        return "Node:\(value)"
    }
}

extension Node:CustomDebugStringConvertible {
    public var debugDescription: String {
       
        if let n = self.next {
            return "\(value)--->\(n.description)"
        }
        return "\(value)"
    }
}
