//
//  DetailMarvelController.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import UIKit
import SDWebImage

class DetailMarvelController: UIViewController {
    
    var ApiRoute = String()
    var idMarvelCard = Int()
    var detailMarvelViewModels = [DetailMarvelViewModel]()
    
    var Header : UIView!
    var lbTag : UILabel!
    var lbtitle : UILabel!
    var ivThumbai : UIImageView!
    var lbDescription : UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        fetchData()
        setupView()
     }
    
    
    fileprivate func fetchData() {
        print(ApiRoute)
        let paramenters = [ApiRoute,String(idMarvelCard)]
        Service.shared.fetchParticularMarvel(with: paramenters , completion: { (responseMarvel, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self.detailMarvelViewModels = responseMarvel!
            
            self.detailMarvelViewModels.forEach({ (DetailMarvelViewModel) in
                self.lbTag.text =  DetailMarvelViewModel.modified
                self.lbtitle.text =  DetailMarvelViewModel.title
                self.lbDescription.text =  DetailMarvelViewModel.description
                
                let URLString = (DetailMarvelViewModel.thumbnail)
                self.ivThumbai.sd_setImage(with: URL(string:URLString), placeholderImage: UIImage(named: "none"))
            })
            
        })
    }
    
    
    
}
