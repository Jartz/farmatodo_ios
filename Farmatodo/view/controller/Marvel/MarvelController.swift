
//  MarvelController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MarvelController: UITableViewController {
    
    
    var marvelViewModels = [MarvelViewModel]()
    var ApiRoute = String()
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
        fetchData()
    }
    
    
    fileprivate func fetchData() {
        marvelViewModels.removeAll()
        Service.shared.fetchCategory (with: ApiRoute, completion: { (responseMarvel, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self.marvelViewModels = responseMarvel!
            self.tableView.reloadData()
        })
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
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marvelViewModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MarvelCell
        let rowMarvel = marvelViewModels[indexPath.row]
        cell.marvelViewModel = rowMarvel
        cell.ContainerPrincipal.tag = indexPath.row
        cell.ContainerPrincipal.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goDetailCard)))
        return cell
    }
    
    
}

extension UIColor {
    static let mainTextBlue = UIColor.rgb(r: 7, g: 71, b: 89)
    static let highlightColor = UIColor.rgb(r: 50, g: 199, b: 242)
    
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}




