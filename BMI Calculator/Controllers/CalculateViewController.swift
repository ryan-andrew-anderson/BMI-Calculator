//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var brain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = brain.getStringFromFloat(sender.value)
    }
    
    @IBAction func weighSliderChanged(_ sender: UISlider) {
        weightLabel.text = brain.getStringFromFloat(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        brain.getBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = brain.getBMIString()
            destinationVC.advice = brain.getAdvice()
            destinationVC.color = brain.getColor()
        }
    }
}
