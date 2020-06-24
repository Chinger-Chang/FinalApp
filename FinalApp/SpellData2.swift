//
//  SpellData2.swift
//  FinalApp
//
//  Created by User20 on 2020/6/24.
//  Copyright © 2020 User23. All rights reserved.
//

import Foundation
import Combine

class SpellData2: ObservableObject {
    var cancellable: AnyCancellable?
    @Published var spells = [Spell]()
    var number = 0
    init() {
         
         let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

         let url = documentsDirectory.appendingPathComponent("lover")

         if let data = try? Data(contentsOf: url) {
             let decoder = JSONDecoder()
             if let decodedData = try? decoder.decode([Spell].self, from: data) {
                 spells = decodedData
             }
         }
         
         cancellable = $spells
             .sink { (value) in
                 let encoder = JSONEncoder()
                 do {
                     let data = try encoder.encode(value)
                     try? data.write(to: url)
                 } catch {
                     
                 }
         }
         
     }
}
