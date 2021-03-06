//
//  TopMoviePreview.swift
//  iOS
//
//  Created by Galera, Javier on 08/01/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                            .font(.footnote)
                        if !isCategoryLast(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }.padding(.bottom, 5)
                
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                    PlayButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.99
            )]), startPoint: .top, endPoint: .bottom))
            
        }
        .foregroundColor(.white)
    }
    
    func isCategoryLast(_ category: String) -> Bool {
        return movie.categories.last == category
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
