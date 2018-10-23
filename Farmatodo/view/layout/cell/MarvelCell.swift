//
//  MarvelCell.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/23/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//



import UIKit
import SDWebImage


class MarvelCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    var marvelViewModel : MarvelViewModel! {
        didSet{
            title.text = marvelViewModel.title
            descriptionCard.text = marvelViewModel.description
            
            let URLString = (marvelViewModel?.thumbnail)!
            print(URLString)
            imgLocal.sd_setImage(with: URL(string:URLString), placeholderImage: UIImage(named: "none"))
   
        }
    }
    
    
    //=========AGREGO LOS OBJECTOS =========
    
    func setupView(){
        
        addSubview(ContainerPrincipal)
        ContainerPrincipal.addSubview(imgLocal)
        ContainerPrincipal.addSubview(title)
        ContainerPrincipal.addSubview(descriptionCard)
        ContainerPrincipal.addSubview(img1)
        ContainerPrincipal.addSubview(separationLine)
        
        setupConstraint()
    }
    
    
    //=========CREO  LOS OBJECTOS =========
    
    let ContainerPrincipal : UIView = {
        let cont = UIView()
        //cont.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
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
        lb.textColor = UIColor.lightGray
        lb.font = UIFont.systemFont(ofSize: 16)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    let descriptionCard : UILabel = {
        let lb = UILabel()
        lb.text = "Direccion"
        lb.textColor = UIColor.lightGray
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    lazy var img1 : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "send2")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.layer.masksToBounds = true
        iv.isUserInteractionEnabled = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    
    
    let separationLine : UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return line
    }()
    
    
    
    //=========POSICION DE LOS OBJECTOS =========
    
    
    func setupConstraint()
    {
        
        ContainerPrincipal.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        ContainerPrincipal.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        ContainerPrincipal.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        ContainerPrincipal.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        imgLocal.topAnchor.constraint(equalTo: ContainerPrincipal.topAnchor).isActive = true
        imgLocal.leftAnchor.constraint(equalTo: ContainerPrincipal.leftAnchor, constant: 10).isActive = true
        imgLocal.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgLocal.bottomAnchor.constraint(equalTo: ContainerPrincipal.bottomAnchor, constant: -10).isActive = true
        
        title.topAnchor.constraint(equalTo: ContainerPrincipal.topAnchor,constant: 10).isActive = true
        title.leftAnchor.constraint(equalTo: imgLocal.rightAnchor, constant: 10).isActive = true
        title.rightAnchor.constraint(equalTo: img1.leftAnchor, constant: -10).isActive = true
        title.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        descriptionCard.leftAnchor.constraint(equalTo: imgLocal.rightAnchor, constant: 10).isActive = true
        descriptionCard.rightAnchor.constraint(equalTo: img1.leftAnchor, constant: -10).isActive = true
        descriptionCard.topAnchor.constraint(equalTo: title.bottomAnchor).isActive = true
        descriptionCard.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        img1.topAnchor.constraint(equalTo: ContainerPrincipal.topAnchor).isActive = true
        img1.rightAnchor.constraint(equalTo: ContainerPrincipal.rightAnchor, constant: -10).isActive = true
        img1.widthAnchor.constraint(equalToConstant: 30).isActive = true
        img1.centerYAnchor.constraint(equalTo: ContainerPrincipal.centerYAnchor).isActive = true
        
        
        separationLine.topAnchor.constraint(equalTo: ContainerPrincipal.bottomAnchor).isActive = true
        separationLine.leftAnchor.constraint(equalTo: ContainerPrincipal.leftAnchor).isActive = true
        separationLine.rightAnchor.constraint(equalTo: ContainerPrincipal.rightAnchor).isActive = true
        separationLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        
    }
    
    
    
}
