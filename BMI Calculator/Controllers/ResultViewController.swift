//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by zakaria lachkar on 3/8/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiVal:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=bmiVal ?? "0.0"

        // Do any additional setup after loading the view.
    }

    @IBAction func recalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
