//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = String(format: "%.2f", sender.value)
        print(currentValue)
    }
    @IBAction func weighSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
}

