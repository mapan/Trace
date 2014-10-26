//
//  TravelsViewController.swift
//  Trace
//
//  Created by Kabir Gupta on 10/25/14.
//  Copyright (c) 2014 Trace-App. All rights reserved.
//

import UIKit

@objc class TravelsViewController: UITableViewController {
    var items: [(String, String, Int)] = [
        ("Los Angeles", "10/1-10/2", 2),
        ("San Francisco", "10/2-10/3", 5),
        ("New York City", "10/2-10/3", 5)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        var nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "customCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as CustomTableViewCell
        var (city, time, pplCount) = items[indexPath.row]
        cell.loadItem(city, time: time, number: pplCount)
        return cell
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> NSInteger {
        return 1;
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) ->
        CGFloat {
        return 75;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //println("You selected cell #\(indexPath.row)!")
    }
}
