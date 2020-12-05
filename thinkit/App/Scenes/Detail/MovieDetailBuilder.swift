//
//  MovieDetailBuilder.swift
//  thinkit
//
//  Created by Amir on 05/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

/// Builder class for movie detail view
struct MovieDetailBuilder {
    func makeView(with movie: Movie) -> some View {
        return MovieDetailView(movie: movie)
    }
}
