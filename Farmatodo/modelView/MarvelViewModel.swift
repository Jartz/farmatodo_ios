//
//  marvelViewModel.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/22/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//


import Foundation
import UIKit

struct MarvelViewModel {
    
    let id: Int
    let title: String
    let description: String
    let thumbnail : String
    
    // Dependency Injection (DI)
    init(marvel: mMarvel) {
        self.id = marvel.id
        self.title = marvel.title
        self.description = marvel.description
        self.thumbnail = marvel.thumbnail
    }
    
}
