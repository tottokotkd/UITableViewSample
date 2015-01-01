//
//  TableViewDelegate.swift
//  testApp
//
//  Created by Tokuda Shusuke on 2015/01/01.
//  Copyright (c) 2015年 tottokotkd. All rights reserved.
//

import UIKit

extension ViewController {
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let text = "\(contents[indexPath.section].title) \(contents[indexPath.section].items[indexPath.row])"
        
        let sb = UIStoryboard(name: "Sub", bundle: NSBundle.mainBundle())
        let vc = sb.instantiateInitialViewController() as SubViewController
        vc.targetText = text
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
