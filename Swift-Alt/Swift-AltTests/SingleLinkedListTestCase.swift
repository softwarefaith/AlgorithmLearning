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
        
        
        
        single.add(element: 3)
        single.add(element: 4)
        
        print(single.debugDescription)
        
        single.clear()

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
