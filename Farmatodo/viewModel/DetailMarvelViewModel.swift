
//  DetailMarvelViewModel.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/23/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import Foundation
import UIKit

struct DetailMarvelViewModel {
    
    let id: Int
    let title: String
    let description: String
    let modified: String
    let thumbnail : String
    
    init(detailMarvel : mDetailMarvel) {
        self.id = detailMarvel.id
        self.title = detailMarvel.title
        self.description = detailMarvel.description
        self.modified = detailMarvel.modified
        self.thumbnail = detailMarvel.thumbnail
    }
    
}
