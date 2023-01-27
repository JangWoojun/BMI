import Foundation
import UIKit

struct BMICalculatorManager {
    
    
    var bmi: Double?
    
    func returnBMI() -> Double {
        guard let bmi = bmi else {
            return 0.0
        }
        return bmi
    }
    
    mutating func calculateBMI(weight: Double, height: Double){
        
        self.bmi = weight / ((height * 0.01) * (height * 0.01))
    }
    
    func calculateBMIText() -> String {
        guard let bmi = bmi else {
            return "오류"
        }
        if bmi < 18.5 {
            return "저체중으로 체중 증량이 필요합니다"
        } else if bmi < 23 {
            return"정상 체중입니다"
        } else if bmi < 25 {
            return "과체중으로 약간에 체중 감량이 필요합니다"
        } else {
            return "비만으로 체중 감량이 필요합니다"
        }
    }
    
    func calculateBMIColor() -> UIColor {
        guard let bmi = bmi else {
            return UIColor.white
        }
        if bmi < 18.5 {
            return UIColor.cyan
        } else if bmi < 23 {
            return UIColor.systemGreen
        } else if bmi < 25 {
            return UIColor.systemOrange
        } else {
            return UIColor.systemRed
        }
    }
    

    
    
    
}
