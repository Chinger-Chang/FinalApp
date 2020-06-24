//
//  SpellList.swift
//  FinalApp
//
//  Created by User20 on 2020/6/24.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct SpellList: View {
    @EnvironmentObject var spellData : SpellData2
    @State private var showEditSpell = false
    @State private var searchText = ""
    @State private var showAlert = false
    let color = UIColor(red: 222/255, green: 255/255, blue: 173/255, alpha: 0.3)
   /* var filterWords: [Spell] {
        return spellData.spells.filter({searchText.isEmpty ? true : $0.id.contains(searchText)})
    }*/
    var body: some View {
        NavigationView{
            List{
                ForEach(spellData.spells){ (spell) in
                    NavigationLink(destination: SpellEditor(editSpell: spell)){
                        SpellRow(spell: spell)
                    }
                }
                .onMove { (indexSet, index) in
                        self.spellData.spells.move(fromOffsets: indexSet,
                                        toOffset: index)
                    }
                .onDelete{(IndexSet) in
                    self.spellData.spells.remove(atOffsets: IndexSet)
                    
                }
                .listRowBackground(Color.init(color))
            
            }
            .navigationBarTitle("咒語列表")
            .navigationBarItems(leading: EditButton(), trailing: Button(action:{
                
                self.showEditSpell = true
                
            }, label: {
                Image(systemName: "plus.circle.fill")
                
            }))
            
            }.sheet(isPresented: $showEditSpell){
                NavigationView{
                    SpellEditor()
                    .environmentObject(self.spellData)
                }
            }
        }

    }


struct SpellList_Previews: PreviewProvider {
    static var previews: some View {
        SpellList()
        .environmentObject(SpellData2())
    }
}
