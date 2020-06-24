//
//  CharacterView.swift
//  FinalApp
//
//  Created by User23 on 2020/6/22.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    @State private var characters = [Character]()
    @State private var showCharacterDetail = false
    @State private var nowIndex = 0
    @State private var searchText = ""
    var filterWords: [Character] {
        return characters.filter({searchText.isEmpty ? true : $0.name.contains(searchText)})
    }
  func GetCharacter(){
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
    var body: some View {
        VStack{
       SearchBar(text: self.$searchText)
            if(searchText.isEmpty){
       List(characters.indices, id: \.self) { (index)  in
                    CharacterRow(character: self.characters[index])
                .onTapGesture {
                   self.showCharacterDetail = true
                   self.nowIndex = index
                    }
            }}
            else{List(characters.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { character in
                CharacterRow(character: character)
                }}
       /* SearchBar(text: self.$searchText)
       List(characters.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { character in
        CharacterRow(character: character)
        }
            .onTapGesture {
            self.showCharacterDetail = true
            //self.nowIndex = index
                
             }*/
        }
        .sheet(isPresented: self.$showCharacterDetail) {
                        CharacterDetail(character: self.characters[self.nowIndex])
                }
                .onAppear {
                        self.GetCharacter()
                }
      
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}
