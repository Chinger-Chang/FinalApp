//
//  CharacterData.swift
//  FinalApp
//
//  Created by User20 on 2020/6/23.
//  Copyright © 2020 User23. All rights reserved.
//

import Foundation
import CryptoKit
import Combine

class CharacterData: ObservableObject {
    @Published var characters = [Character]()
    
    func GetCharacter(name: String){
        let urlStr =
        "https://www.potterapi.com/v1/characters?key=$2a$10$NdVzFYYO8xalSWuVCNzWcOgT.lT4Yf3V.Uc7OqpHAyjmJUKf9GPZq"
        if let url = URL(string: urlStr) {
        URLSession.shared.dataTask(with: url) { (data, response , error) in
        let decoder = JSONDecoder()
        if let data = data, let characterResults = try? decoder.decode([Character].self, from: data) {
                         self.characters = characterResults
                     }
                     else{
                         print("error")
                     }
                 }.resume()
         }
    }
}
