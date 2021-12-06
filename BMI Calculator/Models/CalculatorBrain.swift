//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ryan Anderson on 12/4/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getStringFromFloat(_ value: Float) -> String {
        let value = String(format: "%.2f", value)
        return value
    }
    
    mutating func getBMI( height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more whole foods", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep doing what your'e doing", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Cut back on the treats", color: .red)
        }
    }
    
    func getBMIString() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
