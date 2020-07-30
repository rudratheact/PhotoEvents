//
//  Staffs.swift
//  PhotoEvents
//
//  Created by Rudra Misra on 7/25/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import Foundation

struct Staffs {
    let staff: [Staff]
}

struct Staff: Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let name:String
    let email:String
    let mobile:String
    let adrress:String
}
