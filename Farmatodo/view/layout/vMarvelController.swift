//
//  vMarvel.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/23/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit
//import SDWebImage


extension MarvelController {
    
    func setupView(){
        setupNavigationBar()
    }
    
    func setupNavigationBar(){
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.2588235294, green: 0.5607843137, blue: 0.8705882353, alpha: 1)
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.title = "List Mavel"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(back))
    }
    
  
}
 
