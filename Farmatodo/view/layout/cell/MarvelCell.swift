//
//  MarvelCell.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/23/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//



import UIKit
import SDWebImage


class MarvelCell: UICollectionViewCell,UITextFieldDelegate {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    var marvelViewModel : MarvelViewModel! {
        didSet{
            title.text = marvelViewModel.title
             print("====")
            print(marvelViewModel.title)
            let URLString = (marvelViewModel?.thumbnail)!
            imgLocal.sd_setImage(with: URL(string:URLString), placeholderImage: UIImage(named: "nofoto"))
   
        }
    }
    
    
    //=========AGREGO LOS OBJECTOS =========
    
    func setupView(){
        
        addSubview(ContainerPrincipal)
        ContainerPrincipal.addSubview(imgLocal)
        ContainerPrincipal.addSubview(title)
        setupConstraint()
    }
    
    
    //=========CREO  LOS OBJECTOS =========
    
    let ContainerPrincipal : UIView = {
        let cont = UIView()
        //cont.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cont.translatesAutoresizingMaskIntoConstraints = false
        return cont
    }()
    
    lazy var imgLocal : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "profile")
        iv.contentMode = .scaleToFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        return iv
    }()
    
    
    let title : UILabel = {
        let lb = UILabel()
        lb.text = "Locales"
        lb.textColor = .white
        lb.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6045323202)
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.lineBreakMode = .byWordWrapping
        lb.numberOfLines = 0
        lb.textAlignment = .center
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    //=========POSICION DE LOS OBJECTOS =========
    
    
    func setupConstraint()
    {
        
        ContainerPrincipal.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        ContainerPrincipal.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        ContainerPrincipal.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        ContainerPrincipal.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        imgLocal.topAnchor.constraint(equalTo: ContainerPrincipal.topAnchor).isActive = true
        imgLocal.leftAnchor.constraint(equalTo: ContainerPrincipal.leftAnchor).isActive = true
        imgLocal.rightAnchor.constraint(equalTo: ContainerPrincipal.rightAnchor).isActive = true
        imgLocal.bottomAnchor.constraint(equalTo: ContainerPrincipal.bottomAnchor).isActive = true
        
        title.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        title.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        title.heightAnchor.constraint(equalToConstant: 30).isActive = true
       
    }
    
    
    
}
