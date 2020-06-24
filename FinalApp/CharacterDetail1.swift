//
//  CharacterDetail1.swift
//  FinalApp
//
//  Created by User20 on 2020/6/24.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct CharacterDetail1: View {
    var character: Characterone
    var body: some View {
        List{
            ScrollView(.vertical){
                VStack{
                    CharacterDetail1Image(character: character)
                    Text(character.intro)
                        .font(Font.custom("Cochin Italic3.2", size: 20))
                        .multilineTextAlignment(.center)
                        .padding(5)
                }
                .navigationBarTitle(character.name)
            }
        }
    }
}

struct CharacterDetail1_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail1(character: characters[0])
    }
}

struct CharacterDetail1Image: View {
    var character: Characterone
    var body: some View {
        Image(character.name)
            .resizable()
            .scaledToFit()
            //.frame(height: 500)
            .clipped()
    }
}
