//
//  Costumer.swift
//  Handyman
//
//  Created by Gev Avetisyan on 10/17/19.
//  Copyright © 2019 Gev Avetisyan. All rights reserved.
//

import Foundation

class Customer {
    let name:String?
    let email:String?
    var userId:String?
    
    init(name:String?, email:String, userId:String) {
        self.name = name
        self.email = email
        self.userId = userId
    }
}
