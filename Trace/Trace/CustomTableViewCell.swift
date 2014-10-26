//
//  CustomTableViewCell.swift
//  Trace
//
//  Created by Pan Ma on 10/25/14.
//  Copyright (c) 2014 Trace-App. All rights reserved.
//
import UIKit

class CustomTableViewCell : UITableViewCell {
    @IBOutlet var city: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var pplCount: UILabel!
    
    func loadItem(city: String, time: String, number: Int) {
        self.city.text = city
        self.time.text = time
        pplCount.text = String(number)
    }
}
