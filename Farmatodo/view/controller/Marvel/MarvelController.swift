//
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
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
        fetchData()
    }
    
    
    fileprivate func fetchData() {
        Service.shared.fetchCourses (with: "comics", completion: { (responseMarvel, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self.marvelViewModels = responseMarvel!
            self.tableView.reloadData()
        })
    }
    
    @objc func back(){
        print("back")
        self.navigationController?.dismiss(animated: false, completion:nil);
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marvelViewModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MarvelCell
        let rowMarvel = marvelViewModels[indexPath.row]
        cell.marvelViewModel = rowMarvel
        return cell
    }
    
    fileprivate func setupTableView() {
        tableView.register(MarvelCell.self, forCellReuseIdentifier: cellId)
        tableView.backgroundColor = .white
        tableView.rowHeight = 150
        tableView.tableFooterView = UIView()
    }
}

extension UIColor {
    static let mainTextBlue = UIColor.rgb(r: 7, g: 71, b: 89)
    static let highlightColor = UIColor.rgb(r: 50, g: 199, b: 242)
    
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}




