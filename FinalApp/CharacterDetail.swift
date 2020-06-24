//
//  CharacterDetail.swift
//  FinalApp
//
//  Created by User20 on 2020/6/23.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct CharacterDetail: View {
var character: Character
    var body: some View {
        ZStack{
            Image("original")
            .resizable()
            //.scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .opacity(0.45)
        VStack{
            Group{
                Text("Name : "+character.name+"\n")
                .bold()
                if(character.species != nil)
                {   Text("Species : "+(character.species ?? "")+"\n")
                    .bold()
                }
                if(character.house != nil)
                {   Text("House : "+(character.house ?? "")+"\n")
                    .bold()
                }
                if(character.patronus != nil)
                {   Text("Patronus : "+(character.patronus ?? "")+"\n")
                    .bold()
                }
                if(character.bloodStatus != nil)
                {   Text("Bloodstatus : "+(character.bloodStatus ?? "")+"\n")
                    .bold()
                }
                if(character.role != nil)
                {   Text("Role : "+(character.role ?? "")+"\n")
                    .bold()
                }
                if(character.school != nil)
                {   Text("School : "+(character.school ?? "")+"\n")
                    .bold()
                    .multilineTextAlignment(.center)
                }
                if(character.alias != nil)
                {   Text("Alias : "+(character.alias ?? "")+"\n")
                    .bold()
                }
            }
            Group{
                if(character.wand != nil)
                {   Text("Wand : "+(character.wand ?? "")+"\n")
                    .bold()
                }
                if(character.boggart != nil)
                {   Text("Boggart : "+(character.boggart ?? "")+"\n")
                    .bold()
                }
                if(character.animagus != nil)
                {   Text("Animagus : "+(character.animagus ?? "")+"\n")
                    .bold()
                }
                if(character.orderOfThePhoenix == true)
                {   Text("Order Of The Phoenix : YES\n")
                    .bold()
                }
                else
                {   Text("Order Of The Phoenix : NO\n")
                    .bold()
                }
                if(character.deathEater == true)
                {   Text("Death Eater : YES\n")
                    .bold()
                }
                else
                {   Text("Death Eater : NO\n")
                    .bold()
                }
                if(character.dumbledoresArmy == true)
                {   Text("Dumbledores Army : YES\n")
                    .bold()
                }
                else
                {   Text("Dumbledores Army : NO\n")
                    .bold()
                }
                if(character.ministryOfMagic == true)
                {   Text("Ministry Of Magic : YES\n")
                    .bold()
                }
                else
                {   Text("Ministry Of Magic : NO\n")
                    .bold()
                }
            }
        }
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: Character(name:"111"))
    }
}
/* var name: String
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
   var ministryOfMagic:Bool?*/
