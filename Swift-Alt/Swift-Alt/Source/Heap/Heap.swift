//
//  Heap.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/12/22.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation

public struct Heap<Element:Equatable> {
    
   public typealias HeapSort = (Element,Element) -> Bool
    
    var elements:[Element] = []
    
    let sort:HeapSort
    
   public init(sort: @escaping HeapSort){
        self.sort = sort
    }
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var count:Int {
        return elements.count
    }
    
    public func peek() -> Element? {
        return elements.first
    }
    
    public mutating  func clear(){
        elements.removeAll()
    }
    
    public mutating func add(element:Element){
        elements.append(element)
        siftUp(count-1)
    }
    
   public mutating func remove() ->Element? {
    
        guard self.count > 0, let top = elements.first else {
            return nil
        }
        //swap 0 - last
        elements.swapAt(0, self.count-1)
        elements.removeLast()
        siftDown(0)
        return top
   }
//
//    public mutating func replace(element:Element) ->Element {
//           return
//    }
    
    private mutating func siftUp(_ index:Int){
        
        let element = elements[index]
        
        var childIndex = index
        while childIndex > 0 {
            
            let parentIndex = self.parentIndex(ofChildAt: childIndex)
            let parent = elements[parentIndex]
            
            if sort(parent,element) {
                break
            }
            
            elements[childIndex] = parent
            childIndex = parentIndex
        }
        
        elements[childIndex] = element
    }
    
    private mutating func siftDown(_ index:Int){
        let element = elements[index]
        var parent = index
        
        let half = self.count >> 1
        
        while index < half {
            
            var childIndex = self.leftChildIndex(ofPrarentAt: parent)
            var child: Element = elements[childIndex]
            
            let rightIndex = self.rightChildIndex(ofPrarentAt: parent)
            
            if rightIndex < count ,
                sort(elements[rightIndex],child){
                // re > le
                child = elements[rightIndex]
                childIndex = rightIndex
            }
            //parent > child
            if sort(element,child) {
                break
            }
            elements.swapAt(parent, childIndex)
            
            parent = childIndex
        }
        
    }
    
    private func leftChildIndex(ofPrarentAt index:Int) -> Int {
        return (index << 1) + 1
    }
    
    private func  rightChildIndex(ofPrarentAt index:Int) -> Int {
           return (index << 1) + 2
    }
    
    private func parentIndex(ofChildAt index:Int) -> Int {
        return (index - 1) >> 2
    }
    
}
