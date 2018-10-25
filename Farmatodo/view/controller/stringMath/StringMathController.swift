//
//  StringMathController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit

class StringMathController: UIViewController {
    
    let separation = UIView()
    let tfStringMath = UITextField()
    var btCalculate = UIButton()
    let ivLogo = UIImageView()
    let ivHeader = UIImageView()
    let lbHeader = UILabel()
    let lbContent = UILabel()
    let lbFooter = UILabel()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setupNavigationBar()
    }
    
   
    
    @objc func calculate(){
        print("calculando")
        let stringMath = tfStringMath.text!
        let MathViewModel  = StringMathViewModel(math: mStringMath(data:stringMath))
        
        if(MathViewModel.correctStringEquation()){
            let ApiRoute = MathViewModel.getApi()
            let marvelController =  MarvelController()
            marvelController.ApiRoute = ApiRoute
            let navigationController = UINavigationController(rootViewController: marvelController)
            present(navigationController, animated: true, completion: nil)
            
        }
        else{
            let failController =  FailController()
            let navigationController = UINavigationController(rootViewController: failController)
            present(navigationController, animated: true, completion: nil)
            //self.alert(message:"Al parecer esta mal tu ecuacion :P")
        }
    }
    
    func alert(message:String){
        self.view.endEditing(true)
        let alert = UIAlertController(title:"", message:message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title:"Ok",style: UIAlertAction.Style.default, handler:nil))
        self.present(alert, animated:true, completion:nil)
    }
    
    
}
