//
//  Test3ViewController.swift
//  AutoLayoutTest
//
//  Created by 小野 将司 on 2014/11/23.
//  Copyright (c) 2014年 akisute. All rights reserved.
//

import UIKit

class Test3ViewController: UIViewController {

    @IBOutlet var blue: UIView!
    @IBOutlet var blueBottom: NSLayoutConstraint!
    
    @IBAction func onButton(sender: UIButton) {
        self.blue.hidden = true
        UIView.animateWithDuration(0.3, animations: {
            self.blueBottom.priority = 1
            self.blueBottom.active = false // iOS 8 or later only
            self.view.setNeedsUpdateConstraints()
            self.view.layoutIfNeeded()
        })
    }
    
    @IBAction func onReset(sender: UIBarButtonItem) {
        self.blue.hidden = false
        UIView.animateWithDuration(0.3, animations: {
            self.blueBottom.priority = 999 // UILayoutPriorityRequired - 1
            self.blueBottom.active = true // iOS 8 or later only
            self.view.setNeedsUpdateConstraints()
            self.view.layoutIfNeeded()
        })
    }
}
