//
//  MovieDetailView.swift
//  thinkit
//
//  Created by Amir on 05/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieDetailView: View {
    private let movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    var body: some View {
        VStack(spacing: 20) {
            MovieDetailHeaderView(movie: movie)
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Opening Crawl")
                    Text(movie.openingCrawl)
                }
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            
            HStack(spacing: 24) {
                VStack(alignment: .leading) {
                    Text("Created")
                    Text(movie.created)
                }
                VStack(alignment: .leading) {
                    Text("Edited")
                    Text(movie.edited)
                }
                Spacer()
            }
            .padding([.leading, .trailing], 10)

            Spacer()
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.mock)
    }
}
