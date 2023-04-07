//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by zakaria lachkar on 3/8/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//


//view from scratch
import UIKit

class SecondViewController: UIViewController {
    
    var bmiVal = "0.0"
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        super.viewDidLoad()
        let label = UILabel()
        label.text = bmiVal
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
