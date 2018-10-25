//
//  restApi.swift
//  Farmatodo
//
//  Created by JULIAN RAMOS on 10/24/18.
//  Copyright © 2018 Elitedsh S.A.S. All rights reserved.
//

import Foundation


class restApi {
    class func endPoint() -> String {
        return "https://gateway.marvel.com/v1/public/"
    }
    
    class func auth() -> String {
        return "?limit=20&offset=10&ts=1&apikey=dec7f80f06d17153585da30e7053afd3&hash=d30fe2332c3b53e4893ae11e0c2de567"
    }
}
