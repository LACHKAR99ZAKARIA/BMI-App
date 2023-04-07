//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hText: UILabel!
    @IBOutlet weak var wText: UILabel!
    @IBOutlet weak var hSlider: UISlider!
    @IBOutlet weak var wSlider: UISlider!
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func hSldierChange(_ sender: UISlider) {
        calculatorBrain.hValue = String(format: "%.2f", sender.value)
        hText.text = (calculatorBrain.hValue)
    }
    
    @IBAction func wSliderChange(_ sender: UISlider) {
        //wValue = Int(sender.value)
        calculatorBrain.wValue = String(format: "%.0f", sender.value)
        wText.text = "\(calculatorBrain.wValue)"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: hSlider.value, weight: wSlider.value)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiVal = String(calculatorBrain.getBMIValue())
        }
    }
}

