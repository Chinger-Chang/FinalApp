//
//  Data.swift
//  FinalApp
//
//  Created by User23 on 2020/6/22.
//  Copyright © 2020 User23. All rights reserved.
//

import Foundation

struct Character: Codable, Identifiable{
    let id = UUID().uuidString
    var name: String
    var species: String?
    var house: String?
    var patronus: String?
    var bloodStatus: String?
    var role: String?
    var school: String?
    var alias: String?
    var wand: String?
    var boggart: String?
    var animagus: String?
     var orderOfThePhoenix:Bool?
   var deathEater:Bool?
    var dumbledoresArmy:Bool?
    var ministryOfMagic:Bool?
}
