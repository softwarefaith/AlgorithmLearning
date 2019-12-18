//
//  Node.swift
//  Swift-Alt
//
//  Created by CaiCai on 2019/9/25.
//  Copyright © 2019 CaiCai. All rights reserved.
//

import Foundation


public protocol NodeProtocol {
    
    associatedtype Value
    var value:Value { get set }
    
}
