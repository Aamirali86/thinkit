//
//  MovieDetailHeader.swift
//  thinkit
//
//  Created by Amir on 05/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieDetailHeaderView: View {
    private let movie: Movie
    
    //MARK:- Init
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    //MARK:- Properties
    
    var body: some View {
        VStack(spacing: 36) {
            HStack {
                Text(movie.title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("lightGray"))
                Spacer()
            }
            HStack(spacing: 16) {
                VStack(alignment: .leading) {
                    TitleDetailView(title: "Release date", detail: movie.releaseDate)
                }
                VStack(alignment: .leading) {
                    TitleDetailView(title: "Director", detail: movie.director)
                }
                VStack(alignment: .leading) {
                    TitleDetailView(title: "Producer", detail: movie.producer)
                }
                Spacer()
            }
        }
        .padding(EdgeInsets(top: 20, leading: 8, bottom: 20, trailing: 8))
        .background(Color("DarkBackground"))
        .shadow(radius: 10)
    }
}

struct MovieDetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailHeaderView(movie: Movie.mock)
    }
}
