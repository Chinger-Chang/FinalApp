//
//  CharacterRow.swift
//  FinalApp
//
//  Created by User23 on 2020/6/22.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    var character: Character
    var body: some View {
        VStack(){
            Text(character.name)
            .bold()
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: Character(name:"111"))
    }
}

