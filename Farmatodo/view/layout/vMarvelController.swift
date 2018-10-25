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
    
    func setupNavigationBar(){
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black;
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.title = self.ApiRoute
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Atras", style: UIBarButtonItem.Style.bordered, target: self, action: #selector(back))
    }
    
   
    @objc public func back(){
        print("back")
        self.navigationController?.dismiss(animated: false, completion:nil);
    }
    
   
    
     func setupTableView() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
        layout.minimumLineSpacing = 5
        colView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        colView.delegate   = self
        colView.dataSource = self
        colView.register(MarvelCell.self, forCellWithReuseIdentifier: cellId)
        colView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        colView.clipsToBounds = true
        colView.translatesAutoresizingMaskIntoConstraints = false
     }
    
    func viewAdd(){
        view.addSubview(colView)
        setupConstraint()
    }
    
    func setupConstraint(){
        colView.topAnchor.constraint(equalTo: view.topAnchor,constant:10).isActive = true
        colView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        colView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        colView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
      
    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().barStyle = .blackTranslucent
        return true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    
  
}
 
