//
//  DataSource.swift
//  testApp
//
//  Created by Tokuda Shusuke on 2015/01/01.
//  Copyright (c) 2015年 tottokotkd. All rights reserved.
//

import UIKit

class TableContent {
    var title: String!
    var items: [String]!
    
    class func readPropertyList() -> [TableContent] {
        var contents = [TableContent]()
        
        let filePath = NSBundle.mainBundle().pathForResource("tableContents", ofType: "plist")!
        let rawDic = NSDictionary(contentsOfFile: filePath) as [String: [String]]
        
        for title in rawDic["title"]! {
            let c = TableContent()
            c.title = title
            c.items = rawDic[title]
            contents.append(c)
        }
        return contents
    }
    
    func makeTableCell(tableview: UITableView, _ indexPath: NSIndexPath) -> UITableViewCell {
        let cellID = "tableViewCell"
        let cell = tableview.dequeueReusableCellWithIdentifier(cellID) as? UITableViewCell ?? UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}

extension ViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return contents.count
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents[section].items.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contents[section].title
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return contents[indexPath.section].makeTableCell(tableView, indexPath)
    }
}

