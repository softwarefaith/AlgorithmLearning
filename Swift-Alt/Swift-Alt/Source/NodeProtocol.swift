//
//  Node.swift
//  Swift-Alt
//
//  Created by 蔡杰 on 2019/9/25.
//  Copyright © 2019 蔡杰. All rights reserved.
//

import Foundation


public protocol NodeProtocol {
    
    associatedtype Value
    var value:Value { get set }
    
}
