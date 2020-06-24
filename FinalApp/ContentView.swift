//
//  ContentView.swift
//  FinalApp
//
//  Created by User23 on 2020/6/22.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var spelldata = SpellData2()
      var body: some View {
          TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text(NSLocalizedString("主畫面", comment: ""))
            }
              CharacterList1()
                  .tabItem{
                      Image(systemName: "person.3.fill")
                      Text(NSLocalizedString("角色介紹", comment: ""))
              }
              MovieList()
                  .tabItem{
                      Image(systemName: "film.fill")
                      Text(NSLocalizedString("電影/學院介紹", comment: ""))
              }
             SceneView()
                  .tabItem{
                      Image(systemName: "mappin.and.ellipse")
                      Text(NSLocalizedString("知名景點", comment: ""))
              }
             SpellList()
                  .tabItem{
                      Image(systemName: "wand.and.stars")
                      Text("學咒語")
              }
            
                /*.tabItem{
                    Image(systemName: "list.bullet")
                    Text(NSLocalizedString("附錄", comment: ""))
            }*/
          }
          .environmentObject(spelldata)
         /* .environmentObject(busRouteData)
          .environmentObject(collectData)*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
