//
//  BMIViewController.swift
//  BMI Calculator
//
//  Created by Ryan Anderson on 12/1/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {

    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
         
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
