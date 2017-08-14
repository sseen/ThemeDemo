//
//  ViewController.swift
//  ThemeDemo
//
//  Created by sseen on 2017/8/2.
//  Copyright © 2017年 sseen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var tfOne: UITextField!
    @IBOutlet weak var tfTwo: UITextField!
    
    let oneColor = UIColor.purple
    let twoColor = UIColor(red:0.99, green:0.69, blue:0.31, alpha:1.00)
    let othColor = UIColor(red:0.92, green:0.42, blue:0.37, alpha:1.00)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tfOne.text = "one"
        self.tfTwo.text = "two"
        self.title = "title"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ckOne(_ sender: UIButton) {
        lblOne.backgroundColor = oneColor
        lblOne.tintColor = twoColor
        lblOne.textColor = othColor
        
        sender.backgroundColor = oneColor
        sender.tintColor = twoColor
        
        self.view.tintAdjustmentMode = .dimmed
        
        self.navigationController?.navigationBar.tintColor = twoColor
    }

    @IBAction func ckTwo(_ sender: Any) {
        self.view.tintAdjustmentMode = .normal
    }
}

