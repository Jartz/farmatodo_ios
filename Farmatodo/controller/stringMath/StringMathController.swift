//
//  StringMathController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit

class StringMathController: UIViewController {
    
    let tfStringMath = UITextField()
    var btCalculate = UIButton()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
   
    @objc func calculate(){
        print("calculando")
        let MathViewModel  = stringMathViewModel(math: mStringMath(data:tfStringMath.text!))
        self.alert(message:MathViewModel.calculateString())
    }
    
    func alert(message:String){
        self.view.endEditing(true)
        let alert = UIAlertController(title:"", message:message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title:"Ok",style: UIAlertAction.Style.default, handler:nil))
        self.present(alert, animated:true, completion:nil)
    }
      
   
}
