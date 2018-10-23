//
//  StringMathController+handlers.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit
//import SDWebImage

extension StringMathController {
    
    func setupNavigationBar(){
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.2588235294, green: 0.5607843137, blue: 0.8705882353, alpha: 1)
        self.navigationController?.navigationBar.tintColor = .white
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        imageView.contentMode = .scaleAspectFit
        imageView.center = (self.navigationController?.navigationBar.center)!
        self.navigationItem.titleView = imageView
        setupElement()
        addInView()
    }
    
    //============== Element =============
    
    func setupElement(){
        tfStringMath.placeholder = "Introduce una ecuacion del tipo : 1+1"
        tfStringMath.textAlignment = .center
        tfStringMath.font = UIFont.systemFont(ofSize: 16)
        tfStringMath.translatesAutoresizingMaskIntoConstraints = false
        
        btCalculate.translatesAutoresizingMaskIntoConstraints = false
        btCalculate.setTitle("Calcular", for: .normal)
        btCalculate.backgroundColor = #colorLiteral(red: 0.2588235294, green: 0.5607843137, blue: 0.8705882353, alpha: 1)
        btCalculate.layer.cornerRadius = 25
        btCalculate.clipsToBounds = true
        btCalculate.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btCalculate.addTarget(self, action: #selector(calculate), for: .touchDown)
        btCalculate.isUserInteractionEnabled = true
    }
    
    func addInView(){
        view.addSubview(tfStringMath)
        view.addSubview(btCalculate)
        setupElementLocation()
    }
    
    
    //====== Config Location Element =======
    
    func setupElementLocation(){
        
        tfStringMath.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        tfStringMath.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tfStringMath.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        btCalculate.topAnchor.constraint(equalTo: tfStringMath.bottomAnchor, constant: 160).isActive = true
        btCalculate.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btCalculate.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btCalculate.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    

}

