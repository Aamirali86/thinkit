//
//  MovieListView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject private var viewModel: MovieListViewModel

    init(with viewModel: MovieListViewModel) {
        self.viewModel = viewModel
        viewModel.fetchMovies()
    }

    var body: some View {
        NavigationView {
            List {
                MovieListHeaderView()
                    .listRowInsets(.init())
                ForEach(0..<5) { _ in
                    MovieListItemView()
                        .listRowInsets(.init())
                }
            }
            .navigationBarTitle("Think-it Star Wars", displayMode: .inline)
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(with: .mock)
    }
}
