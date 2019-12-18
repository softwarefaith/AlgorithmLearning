//
//  ViewController.swift
//  Swift-Alt
//
//  Created by CaiCai on 2019/9/23.
//  Copyright © 2019 CaiCai. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var array = [1,10,6,20,8]
        bubbleSort(&array)
        print(array)
    
    }

    
    
  
}

