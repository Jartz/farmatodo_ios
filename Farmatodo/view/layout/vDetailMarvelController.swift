//
//  vDetailMarvelController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/23/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//


import UIKit
//import SDWebImage


extension DetailMarvelController {
    
    func setupView(){
        setupNavigationBar()
        setupElement()
        addElement()
        locationElement()
    }
    
    func setupNavigationBar(){
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.title = String(self.idMarvelCard)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(back))
    }
    
    @objc public func back(){
        print("back")
        self.navigationController?.dismiss(animated: false, completion:nil);
    }
    
    func  addElement(){
         view.addSubview(Header)
         Header.addSubview(ivThumbai)
         view.addSubview(lbTag)
         view.addSubview(lbDescription)
         view.addSubview(lbtitle)
        
    }
    
    
    
    func setupElement(){
        
        Header = UIView()
        Header.backgroundColor = .black
        Header.translatesAutoresizingMaskIntoConstraints = false
        
        lbTag = UILabel()
        lbTag.text = "prueba"
        lbTag.backgroundColor = .red
        lbTag.textColor = .white
        lbTag.textAlignment = .center
        lbTag.font = UIFont.systemFont(ofSize: 9)
        lbTag.translatesAutoresizingMaskIntoConstraints = false
        
        ivThumbai = UIImageView()
        ivThumbai.contentMode = .scaleAspectFit
        ivThumbai.clipsToBounds = true
        ivThumbai.layer.masksToBounds = true
        ivThumbai.isUserInteractionEnabled = true
        ivThumbai.translatesAutoresizingMaskIntoConstraints = false
        
        
        lbtitle = UILabel()
        lbtitle.text = "prueba"
        lbtitle.font = UIFont.boldSystemFont(ofSize: 20)
        lbtitle.translatesAutoresizingMaskIntoConstraints = false
        lbtitle.lineBreakMode = .byWordWrapping
        lbtitle.numberOfLines = 0
        
        lbDescription = UILabel()
        lbDescription.text = "prueba"
        lbDescription.translatesAutoresizingMaskIntoConstraints = false
        lbDescription.lineBreakMode = .byWordWrapping
        lbDescription.numberOfLines = 0
    }
    
    func locationElement(){
        
        Header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        Header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        Header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        Header.heightAnchor.constraint(equalToConstant: 320).isActive = true
        
        ivThumbai.topAnchor.constraint(equalTo: Header.topAnchor,constant:20).isActive = true
        ivThumbai.bottomAnchor.constraint(equalTo: Header.bottomAnchor,constant:-20).isActive = true
        ivThumbai.rightAnchor.constraint(equalTo: Header.rightAnchor).isActive = true
        ivThumbai.leftAnchor.constraint(equalTo: Header.leftAnchor).isActive = true
        
        lbTag.bottomAnchor.constraint(equalTo: Header.bottomAnchor, constant: 20).isActive = true
        lbTag.centerXAnchor.constraint(equalTo: Header.centerXAnchor).isActive = true
        lbTag.widthAnchor.constraint(equalToConstant: 250).isActive = true
        lbTag.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        lbtitle.topAnchor.constraint(equalTo: Header.bottomAnchor, constant: 30).isActive = true
        lbtitle.leftAnchor.constraint(equalTo: view.leftAnchor,constant:16).isActive = true
        lbtitle.rightAnchor.constraint(equalTo: view.rightAnchor,constant:-16).isActive = true
        
        lbDescription.topAnchor.constraint(equalTo: lbtitle.bottomAnchor, constant: 30).isActive = true
        lbDescription.leftAnchor.constraint(equalTo: view.leftAnchor ,constant:16).isActive = true
        lbDescription.rightAnchor.constraint(equalTo: view.rightAnchor,constant:-16).isActive = true
       
    }
    
}

