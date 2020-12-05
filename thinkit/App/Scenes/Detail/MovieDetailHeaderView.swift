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
    
    init(movie: Movie) {
        self.movie = movie
    }
    
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
                    Text("Release date")
                        .foregroundColor(Color("lightGray"))
                    Text(movie.releaseDate)
                        .foregroundColor(Color("lightGray"))
                }
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
