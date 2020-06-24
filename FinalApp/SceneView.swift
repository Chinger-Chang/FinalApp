//
//  SceneView.swift
//  FinalApp
//
//  Created by User20 on 2020/6/23.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI
import MapKit

struct SceneView: View {
    @State private var annotations = [MKPointAnnotation]()
    @State private var showScene1 = false
    @State private var showScene2 = false
    @State private var showScene3 = false
    @State private var showScene4 = false
    @State private var showScene5 = false
    @State private var showScene6 = false
    @State private var showScene7 = false
    @State private var showScene8 = false
    @State private var selectImage = Image(systemName:"photo")
    @State private var showSelectPhoto = false
    var body: some View {
        List {
            Button(action: {
                self.showScene1 = true
        }) {
                VStack{
                        Image("studiotour")
                        .resizable()
                        .scaledToFill()
                        Text("哈利波特製片場")
                        .font(Font.custom("GillSans-Bold", size: 25))
                        .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                      } .padding(20)
                        .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                        .cornerRadius(30)
                    }
                        .buttonStyle(PlainButtonStyle())
                        .sheet(isPresented: self.$showScene1) {
                            ExtractedView(lat:51.690410,lon:-0.418079,place:"哈利波特製片場")
                        }
            Button(action: {
                    self.showScene2 = true
            }) {
                    VStack{
                            Image("kingcrossstation")
                            .resizable()
                            .scaledToFill()
                            Text("國王十字車站-九又四分之三月台")
                            .font(Font.custom("GillSans-Bold", size: 25))
                            .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                          } .padding(20)
                            .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                            .cornerRadius(30)
                        }
                            .buttonStyle(PlainButtonStyle())
                            .sheet(isPresented: self.$showScene2) {
                                ExtractedView(lat:51.532268,lon:-0.123912,place:"國王十字車站-九又四分之三月台")
                            }
            Button(action: {
                    self.showScene3 = true
            }) {
                    VStack{
                            Image("stpancrasinternational")
                            .resizable()
                            .scaledToFill()
                            Text("聖潘克拉斯車站")
                            .font(Font.custom("GillSans-Bold", size: 25))
                            .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                          } .padding(20)
                            .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                            .cornerRadius(30)
                        }
                            .buttonStyle(PlainButtonStyle())
                            .sheet(isPresented: self.$showScene3) {
                                ExtractedView(lat:51.531474,lon:-0.123912,place:"聖潘克拉斯車站")
           
                            }
            Button(action: {
                               self.showScene4 = true
                       }) {
                               VStack{
                                       Image("christchurch")
                                       .resizable()
                                       .scaledToFill()
                                       Text("牛津大學基督學院")
                                       .font(Font.custom("GillSans-Bold", size: 25))
                                       .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                                     } .padding(20)
                                       .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                                       .cornerRadius(30)
                                   }
                                       .buttonStyle(PlainButtonStyle())
                                       .sheet(isPresented: self.$showScene4) {
                                           ExtractedView(lat:51.749989,lon:-1.255842,place:"牛津大學基督學院")
                                       }
            Button(action: {
                    self.showScene5 = true
            }) {
                    VStack{
                            Image("bodleianlibrary")
                            .resizable()
                            .scaledToFill()
                            Text("霍格華茲圖書館")
                            .font(Font.custom("GillSans-Bold", size: 25))
                            .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                          } .padding(20)
                            .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                            .cornerRadius(30)
                        }
                            .buttonStyle(PlainButtonStyle())
                            .sheet(isPresented: self.$showScene5) {
                                ExtractedView(lat:51.754206,lon:-1.254053,place:"霍格華茲圖書館")
                            }
            Button(action: {
                    self.showScene6 = true
            }) {
                    VStack{
                            Image("alwickcastle")
                            .resizable()
                            .scaledToFill()
                            Text("阿尼克城堡")
                            .font(Font.custom("GillSans-Bold", size: 25))
                            .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                          } .padding(20)
                            .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                            .cornerRadius(30)
                        }
                            .buttonStyle(PlainButtonStyle())
                            .sheet(isPresented: self.$showScene6) {
                                ExtractedView(lat:55.415717,lon:-1.705920,place:"阿尼克城堡")
                            }
            Button(action: {
                    self.showScene7 = true
            }) {
                    VStack{
                            Image("leadenhallmarket")
                            .resizable()
                            .scaledToFill()
                            Text("斜角巷-破釜酒吧")
                            .font(Font.custom("GillSans-Bold", size: 25))
                            .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                          } .padding(20)
                            .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                            .cornerRadius(30)
                        }
                            .buttonStyle(PlainButtonStyle())
                            .sheet(isPresented: self.$showScene7) {
                                ExtractedView(lat:51.512873,lon:-0.083513,place:"斜角巷-破釜酒吧")
                            }
            Button(action: {
                    self.showScene8 = true
            }) {
                    VStack{
                            Image("piccadillycircus")
                            .resizable()
                            .scaledToFill()
                            Text("皮卡迪利圓環")
                            .font(Font.custom("GillSans-Bold", size: 25))
                            .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                          } .padding(20)
                            .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                            .cornerRadius(30)
                        }
                            .buttonStyle(PlainButtonStyle())
                            .sheet(isPresented: self.$showScene8) {
                                ExtractedView(lat:51.510076,lon:-0.134982,place:"皮卡迪利圓環")
                            }
            Button(action: {
                self.showSelectPhoto = true
            }){
                VStack{
                    selectImage
                        .resizable()
                        .renderingMode(.original)
                        .scaledToFill()
                        //.frame(width: 350, height: 220)
                        .clipped()
                    Text("放入你拍攝的場景吧！")
                      .font(Font.custom("GillSans-Bold", size: 25))
                      .foregroundColor(Color(red: 255/255, green: 48/255, blue: 48/255))
                    } .padding(20)
                    .background(Color(red: 255/255, green: 193/255, blue: 193/255))
                    .cornerRadius(30)
                }
            }
            .sheet(isPresented: $showSelectPhoto){
                ImagePickerController(showSelectPhoto: self.$showSelectPhoto, selectImage: self.$selectImage)
            }
            
            /*ExtractedView()
             Alwick Castle 55.415717, -1.705920
             St Pancras International 51.531474, -0.126133
            King's Cross 51.532268, -0.123912
             piccadilly circus 51.510076, -0.134982
             Leadenhall Market Bull’s Head 51.512873, -0.083513
             Christ Church 51.749989, -1.255842
              Bodleian Library 51.754206, -1.254053
*/
        }
    }


struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView()
    }
}

struct ExtractedView: View {
    @State private var annotations = [MKPointAnnotation]()
    var lat:Double
    var lon:Double
    var place:String
    var body: some View {
        VStack {
            Button("標記") {
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: self.lat, longitude: self.lon)
            annotation.title = self.place
            self.annotations.append(annotation)
        }
        MapView(coordinate: CLLocationCoordinate2D(latitude: self.lat, longitude: self.lon),annotations: self.annotations)
        }
    }
}
