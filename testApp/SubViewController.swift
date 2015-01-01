//
//  SubViewController.swift
//  testApp
//
//  Created by Tokuda Shusuke on 2015/01/02.
//  Copyright (c) 2015年 tottokotkd. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    var targetText: String!
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = targetText
        }
    }
}
