//
//  Spell.swift
//  FinalApp
//
//  Created by User20 on 2020/6/24.
//  Copyright © 2020 User23. All rights reserved.
//

import Foundation
struct Spell : Identifiable,Codable {
 let id = UUID()
 var episode: Int
 var difficulty: Int
 var episodenum: Int
}
