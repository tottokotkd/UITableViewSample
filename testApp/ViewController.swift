//
//  ViewController.swift
//  testApp
//
//  Created by Tokuda Shusuke on 2015/01/01.
//  Copyright (c) 2015年 tottokotkd. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var contents: [TableContent]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contents = TableContent.readPropertyList()
        println(contents)
    }
}

