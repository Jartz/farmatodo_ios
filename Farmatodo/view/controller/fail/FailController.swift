//
//  FailController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/25/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import Foundation
import UIKit


class FailController: UIViewController {
    
    let ivFondo = UIImageView()
    let btBack = UIButton()
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
      
        view.addSubview(ivFondo)
        view.addSubview(btBack)
        setupNav()
        setupView()
        setupConstraint()
    }
    
    func setupNav(){
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Atras", style: UIBarButtonItem.Style.bordered, target: self, action: #selector(back))
    }
    
    func setupView(){
    ivFondo.image = UIImage(named: "dead")
    ivFondo.contentMode = .scaleToFill
    ivFondo.translatesAutoresizingMaskIntoConstraints = false
    ivFondo.clipsToBounds = true
    
    btBack.translatesAutoresizingMaskIntoConstraints = false
    btBack.setTitle("Calcular ¿ Estas Seguro ?", for: .normal)
    btBack.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    btBack.layer.cornerRadius = 5
    btBack.clipsToBounds = true
    btBack.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    btBack.addTarget(self, action: #selector(back), for: .touchDown)
    btBack.isUserInteractionEnabled = true

    }
    
    func setupConstraint(){
        
        ivFondo.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        ivFondo.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        ivFondo.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        ivFondo.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        btBack.topAnchor.constraint(equalTo: ivFondo.bottomAnchor).isActive = true
        btBack.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        btBack.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        btBack.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
      
    }
    
    
    @objc public func back(){
        print("back")
        self.navigationController?.dismiss(animated: false, completion:nil);
    }
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    
  
}
