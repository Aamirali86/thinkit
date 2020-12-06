//
//  MovieListItemView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListItemView: View {
    private var movie: Movie
    
    //MARK:- Init
    
    init(with movie: Movie) {
        self.movie = movie
    }
    
    //MARK:- Properties
    
    var body: some View {
        NavigationLink(destination: MovieDetailBuilder().makeView(with: movie)) {
            VStack(spacing: 12) {
                HStack {
                    Text(movie.title)
                        .font(Font.custom("Avinir", size: 24).weight(.regular))
                        .foregroundColor(Color("lightGray"))
                    Spacer()
                    TitleDetailView(title: "Release date", detail: movie.releaseDate)
                }
                HStack(spacing: 16) {
                    TitleDetailView(title: "Director", detail: movie.director)
                    TitleDetailView(title: "Producer", detail: movie.producer)
                    Spacer()
                }
                HStack {
                    Text(movie.openingCrawl)
                        .font(Font.custom("Avinir", size: 13).weight(.regular))
                        .lineLimit(2)
                        .foregroundColor(Color("lightGray"))
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 20, leading: 8, bottom: 20, trailing: 8))
        }
        .background(Color("DarkBackground")
                    .shadow(color: .gray, radius: 4, x: 0, y: 0))
    }
}

struct MovieListItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListItemView(with: .mock)
    }
}
