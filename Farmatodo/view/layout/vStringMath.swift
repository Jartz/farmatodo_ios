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
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
       self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
 
 
        
        view.backgroundColor = .black
        setupElement()
        addInView()
    }
    
    //============== Element =============
    
    func setupElement(){
        
        ivLogo.image = UIImage(named: "logo")
        ivLogo.contentMode = .scaleToFill
        ivLogo.translatesAutoresizingMaskIntoConstraints = false
        ivLogo.clipsToBounds = true
        
        ivHeader.image = UIImage(named: "header")
        ivHeader.contentMode = .scaleToFill
        ivHeader.translatesAutoresizingMaskIntoConstraints = false
        ivHeader.clipsToBounds = true
        
        lbHeader.text = "Te dare posibilidad de vivir;\nSi realizas una ecuacion que\ntenga como resultado un\nmultipo de (3, 5 , 7 , 11)"
        lbHeader.textColor = .white
        lbHeader.font = UIFont.systemFont(ofSize: 14)
        lbHeader.lineBreakMode = .byWordWrapping
        lbHeader.numberOfLines = 0
        lbHeader.translatesAutoresizingMaskIntoConstraints = false
        
        lbContent.text = "¡Solo tienes una Oportunidad, No la desaprovéches!"
        lbContent.textColor = .red
        lbContent.font = UIFont.boldSystemFont(ofSize: 16)
        lbContent.lineBreakMode = .byWordWrapping
        lbContent.numberOfLines = 0
        lbContent.textAlignment = .center
        lbContent.translatesAutoresizingMaskIntoConstraints = false
        
        lbFooter.text = "Desarrollador JART - 2018"
        lbFooter.textColor = .white
        lbFooter.font = UIFont.boldSystemFont(ofSize: 12)
        lbFooter.textAlignment = .center
        lbContent.lineBreakMode = .byWordWrapping
        lbContent.numberOfLines = 0
        lbFooter.translatesAutoresizingMaskIntoConstraints = false
        
        tfStringMath.placeholder = "Introduce una ecuacion del tipo : 1+1"
        tfStringMath.clipsToBounds = false
        tfStringMath.textAlignment = .center
        tfStringMath.font = UIFont.systemFont(ofSize: 16)
        tfStringMath.keyboardAppearance = UIKeyboardAppearance.dark
        tfStringMath.textColor = .white
        tfStringMath.keyboardType = UIKeyboardType.alphabet
        tfStringMath.translatesAutoresizingMaskIntoConstraints = false
        
        btCalculate.translatesAutoresizingMaskIntoConstraints = false
        btCalculate.setTitle("Calcular ¿ Estas Seguro ?", for: .normal)
        btCalculate.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        btCalculate.layer.cornerRadius = 5
        btCalculate.clipsToBounds = true
        btCalculate.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btCalculate.addTarget(self, action: #selector(calculate), for: .touchDown)
        btCalculate.isUserInteractionEnabled = true
        
        separation.layer.borderWidth = 1.0
        separation.layer.borderColor = UIColor.white.cgColor
        separation.backgroundColor = .white
        separation.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func addInView(){
        view.addSubview(ivHeader)
        view.addSubview(lbHeader)
        view.addSubview(lbContent)
        view.addSubview(lbFooter)
        view.addSubview(tfStringMath)
        view.addSubview(separation)
        view.addSubview(btCalculate)
        setupElementLocation()
    }
    
    
    //====== Config Location Element =======
    
    func setupElementLocation(){
        
        lbHeader.topAnchor.constraint(equalTo: view.topAnchor,constant:60).isActive = true
        lbHeader.leftAnchor.constraint(equalTo: view.leftAnchor,constant:16).isActive = true
        lbHeader.widthAnchor.constraint(equalToConstant: 184).isActive = true
        lbHeader.centerYAnchor.constraint(equalTo: ivHeader.centerYAnchor).isActive = true
        
        ivHeader.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        ivHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        ivHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        ivHeader.heightAnchor.constraint(equalToConstant: 211).isActive = true
        
        lbContent.topAnchor.constraint(equalTo: ivHeader.bottomAnchor,constant:20).isActive = true
        lbContent.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lbContent.widthAnchor.constraint(equalToConstant: 235).isActive = true
        
        tfStringMath.topAnchor.constraint(equalTo: lbContent.bottomAnchor, constant: 40).isActive = true
        tfStringMath.widthAnchor.constraint(equalToConstant: 235).isActive = true
        tfStringMath.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        separation.topAnchor.constraint(equalTo: tfStringMath.bottomAnchor,constant:10).isActive = true
        separation.widthAnchor.constraint(equalToConstant: 235).isActive = true
        separation.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        separation.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        btCalculate.topAnchor.constraint(equalTo: tfStringMath.bottomAnchor, constant: 40).isActive = true
        btCalculate.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btCalculate.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btCalculate.widthAnchor.constraint(equalToConstant: 235).isActive = true
        
        lbFooter.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant:-60).isActive = true
        lbFooter.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lbFooter.widthAnchor.constraint(equalToConstant: 235).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tfStringMath.becomeFirstResponder()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
  
    
    
}

