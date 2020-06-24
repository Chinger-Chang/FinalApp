//
//  MovieDetail.swift
//  FinalApp
//
//  Created by User20 on 2020/6/23.
//  Copyright © 2020 User23. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    var body: some View {
        ScrollView(.vertical){
            VStack {
                //MovieDetailImage(movie: movie)
                WebView(urlString: movie.url)
                    
                .frame(width:350,height: 300)
                .padding(20)
                Text(movie.intro)
                    .font(Font.custom("HiraginoSans-W7", size: 20))
                        .bold().padding(10)
                        .multilineTextAlignment(.leading)
                        .cornerRadius(30)
                        
                    Spacer()
            }
            .navigationBarTitle(movie.name)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}

/*struct MovieDetailImage: View {
    var movie: Movie
    var body: some View {
        Image(movie.name)
            .resizable()
            .scaledToFill()
            //.frame(height: 500)
            .clipped()
    }
}*/

