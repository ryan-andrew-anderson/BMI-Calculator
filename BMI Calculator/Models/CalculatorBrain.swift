//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ryan Anderson on 12/4/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi = 0.0
    
    func getHeightValue(_ height: Float) -> String {
       let heightValue = String(format: "%.2f", height)
        return heightValue
    }
    
    func getWeightValue(_ weight: Float) -> String {
        let weightValue = String(format: "%.0f", weight)
        return weightValue
    }
    
    mutating func getBMI( height: Float, weight: Float) {
        self.bmi = Double(weight / pow(height, 2))
    }
    
    func getString(_ value: Double) -> String {
        return String(format: "%.1f", value)
    }
}
