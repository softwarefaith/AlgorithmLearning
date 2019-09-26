//
//  SingleLinkedList.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation

public struct SingleLinkedList<Element:Equatable>{
    
    final class Node<Value:Equatable>:NodeProtocol{
        //这里可以不需要指定 tylias,因为
        //associatedtype Value  与Node泛型同名
       // typealias Value = Value
        var value:Value
        var next:Node?
        
        public init(value:Value, next: Node? = nil){
            self.value = value
            self.next = next
        }
        deinit {
            print("Node deinit \(self.description)")
        }
    }

    public var size:Int = 0
    
    var first:Node<Element>?
    
    public init(){}

}

// MARK: ListProtocol
extension SingleLinkedList:ListProtocol {
    
    public typealias E = Element

    public mutating func clear() {
        //这里不需要遍历 将每一个nodez设置为 nil
        size = 0
        first = nil
        first?.next = nil
    }

    public func get(index: Int) -> Element? {
        let node = getNode(index)
        return node?.value
    }
    
    public mutating func set(index: Int, element: Element) -> Element? {
        
        let node = getNode(index)
        let oldElement = node?.value
        node?.value = element
        return oldElement
    }
    
    public mutating  func add(index: Int, element: Element) {
    
        //检查是否越界
        guard self.checkValidRange(index) else {
            return
        }
        
        if(index == 0){
            //第一个节点
            first = Node(value: element,next: first)
           
        } else {
            guard let preNode = getNode( index-1) else {
                 return
            }
            preNode.next = Node(value: element, next: preNode.next)
        }
        size += 1;
    }
    
    public mutating func remove(index: Int) -> Element? {
        
        guard self.checkValidRange(index) else {
            return nil
        }
        var  removeNode = first
        if(index == 0){
            first = removeNode?.next
        } else {
            let preNode = getNode(index - 1)
            removeNode = preNode?.next
            preNode?.next = removeNode?.next
        }
        if removeNode != nil {
             size -= 1
        }
        return removeNode?.value
    }
    
    public func indexOf(element: Element) -> Int? {
        
        guard first != nil else {
            return nil
        }
        var node = first
        var index:Int = 0
        while node != nil {
            
            if node!.value == element {
                break
            }
            node = node?.next
            index += 1
        }
        return index < size ? Optional.some(index) :nil
    }
}

extension SingleLinkedList {
    
    func getNode(_ index:Int)->Node<Element>? {
        guard self.checkValidRange(index) else {
            return nil
        }
        var node = first
        var i = 0
        while i < index {
            node = node?.next
            i += 1
        }
        return node
    }
    
    func checkValidRange(_ index:Int)->Bool{
        if(index<0 || index>size){
            return false
        }
        return true
    }
}

////MARK:
//extension SingleLinkedList:Collection {
//
//}

//MARK: Debug

extension SingleLinkedList:CustomStringConvertible  {
    public var description: String {
    
        return  self.debugDescription
    }
}

extension SingleLinkedList:CustomDebugStringConvertible {
    public var debugDescription: String {
        print("-----log begin-----")
        guard let _ = first ,size != 0 else{
                   return "空"
        }
        return "SingleLinkedList: \(first!.debugDescription)"
    }
}

extension SingleLinkedList.Node:CustomStringConvertible {
    
    public var description: String {
        return "Node:\(value)"
    }
}

extension SingleLinkedList.Node:CustomDebugStringConvertible {
    public var debugDescription: String {
       
        if let n = self.next {
            return "\(value)--->\(n.debugDescription)"
        }
        return "\(value)"
    }
}

