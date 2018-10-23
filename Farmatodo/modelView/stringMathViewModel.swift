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
    
}
