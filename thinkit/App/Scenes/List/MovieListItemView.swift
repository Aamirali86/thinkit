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
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("lightGray"))
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Release date")
                            .foregroundColor(Color("lightGray"))
                        Text(movie.releaseDate)
                            .foregroundColor(Color("lightGray"))
                    }
                }
                HStack(spacing: 16) {
                    VStack(alignment: .leading) {
                        Text("Director")
                            .foregroundColor(Color("lightGray"))
                        Text(movie.director)
                            .foregroundColor(Color("lightGray"))
                    }
                    VStack(alignment: .leading) {
                        Text("Producer")
                            .foregroundColor(Color("lightGray"))
                        Text(movie.producer)
                            .foregroundColor(Color("lightGray"))
                    }
                    Spacer()
                }
                HStack {
                    Text(movie.openingCrawl)
                        .foregroundColor(Color("lightGray"))
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 20, leading: 8, bottom: 20, trailing: 8))
        }
        .background(Color("DarkBackground"))
    }
}

struct MovieListItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListItemView(with: .mock)
    }
}
