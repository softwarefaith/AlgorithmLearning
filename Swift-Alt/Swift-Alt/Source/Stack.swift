//
//  Stack.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/10/24.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation

public final class Stack<E>{
    private var store:Array<E> = [E]()
    
    public init(){}
    
    public init(_ elements:[E]){
        store = elements
        
    }
    
    public var size:Int {
        return store.count
    }
     
    public func clear(){
        store.removeAll()
    }
    
    public func push(element:E){
        store.append(element)
    }
    @discardableResult
    public func pop()->E?{
        if self.size == 0 {
            return nil
        }
       return store.remove(at:store.count-1)
    }
    
    public func top()->E?{
        return store.first
    }
}

extension Stack:CustomStringConvertible {
    public var description: String {
        let stacks = store.map{"\($0)"}.reversed().joined(separator: "\n")
        return "-----Stack----\n"+stacks+"\n-------"
    }
}

extension Stack:ExpressibleByArrayLiteral{
   
    public convenience init(arrayLiteral elements: E...){
        self.init(elements)
    }
}
