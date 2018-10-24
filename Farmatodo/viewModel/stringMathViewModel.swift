//
//  stringMathViewModel.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import Foundation
import UIKit

class stringMathViewModel {
    
    let stringMath: String
    let result: String
    
    // Dependency Injection (DI)
    init(math: mStringMath) {
        stringMath = math.data
        result = "calculado"
    }
    
    func calculateString()->String
    {
        let s = stringMath.replacingOccurrences(of: "x", with: "*")
        do {
        let expn = NSExpression(format:s)
        let result = "\(expn.expressionValue(with: nil, context: nil) ?? 0)"
        return result
        }
        catch {
        print("Error:")
        return "Error"
        }
    }
    
    func validateMultiple()->String
    {
        let currentValue = Int(calculateString())
        let mulptiples = [3,5,7,11,13]
        if (currentValue == 0){
            return "characters"
        }
        else{
            for multiple in mulptiples {
                if ((currentValue! % multiple) == 0) {
                    print("Is multiple :", multiple)
                    return String(multiple)
                }
            }
        }
        return "default"
    }
    
    
    func getApi()->String{
        let value = validateMultiple().trimmingCharacters(in: .whitespaces)
       
        print(value)
        
        switch value{
        case "0":
            return "characters"
        case "3":
            return "comics"
        case "5":
            return "comics"
        case "7":
            return "creators"
        case "11":
            return "events"
        case "13":
            return "series"
        default:
            return "stories"
        }
    }
    
}
