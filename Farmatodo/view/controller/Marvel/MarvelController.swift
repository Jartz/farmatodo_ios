//  MarvelController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MarvelController: UIViewController ,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    
    var marvelViewModels = [MarvelViewModel]()
    var ApiRoute = String()
    let cellId = "cellId"
    var colView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
        viewAdd()
        fetchData()
    }
    
    
    fileprivate func fetchData() {
        marvelViewModels.removeAll()
        
        
        let paramenters = [ApiRoute,"List"]
        Service.shared.fetchData (with: paramenters, completion: { (responseMarvel, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            
            
            self.marvelViewModels = responseMarvel!
            self.colView.reloadData()
            
        })
        print("tabla cargada")
    }
    
    @objc func goDetailCard(sender : UITapGestureRecognizer){
        let indexpath = sender.view!.tag
        let marvelViewModel = marvelViewModels[indexpath]
        print(marvelViewModel.id)
        
        let detailMarvelController  = DetailMarvelController()
        detailMarvelController.idMarvelCard =  marvelViewModel.id
        detailMarvelController.ApiRoute = ApiRoute
        let navigationController = UINavigationController(rootViewController:detailMarvelController)
        self.present(navigationController, animated: true, completion: nil)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return marvelViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MarvelCell
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 0.5
        
        let rowMarvel = marvelViewModels[indexPath.row]
        cell.marvelViewModel = rowMarvel
        cell.ContainerPrincipal.tag = indexPath.row
        cell.ContainerPrincipal.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goDetailCard)))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width-20)/2, height: view.frame.height/3)
    }
    
}





