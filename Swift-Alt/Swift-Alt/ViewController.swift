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
        var array = Int.randomIntNumbers()
        print("排序前-----")
        print(array)
        selectedSort(&array)
        print("排序j后-----")
        print(array)
    
    }

    func heapRemove(){
       // let array
    }
    
  
}

