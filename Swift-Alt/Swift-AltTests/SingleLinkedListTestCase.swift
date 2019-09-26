//
//  SingleLinkedListTestCase.swift
//  Swift-AltTests
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import XCTest

import Swift_Alt

class SingleLinkedListTestCase: XCTestCase {

    var single = SingleLinkedList<Int>()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
       
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        single.add(element: 1)
        single.add(element: 2)
        single.add(element: 3)
        single.add(element: 4)
        single.add(element: 5)
        single.add(element: 6)
        single.add(element: 7)
        single.add(element: 8)
        
        let e6 = single.get(index: 4)
            
        XCTAssertTrue(e6 == 5, "e5 is error")
        
        XCTAssertTrue(single.size == 8, "size = 8 is error")
        
        //添加失败 超出范围
        single.add(index: 10, element: 10)
        
        XCTAssertTrue(single.size == 8, "insert is error")
        
        single.add(index: 5, element: 55)
        
        let e = single.indexOf(element: 55)
        
        XCTAssertTrue(e == 5, "indexOf is error")
        
        let e50 = single.get(index: 50)
        XCTAssertNil(e50)
            
              
        
        let e55 = single.get(index: 5)
        XCTAssertNotNil(e55)
        XCTAssertTrue(e55! == 55, "e55 is error")
        
        //删除
        let e1 = single.remove(index: 1)
        XCTAssertTrue(e1 == 2, "e1 remove is error")
        XCTAssertTrue(single.size == 8, "size = 9 is error")
        
        
        print(single.debugDescription)
        
       // single.clear()

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
