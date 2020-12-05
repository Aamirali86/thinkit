//
//  MovieListView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListView<Model: MovieListViewModelType>: View {
    @ObservedObject private var viewModel: Model

    //MARK:- Init
    
    init(with viewModel: Model) {
        self.viewModel = viewModel
    }

    //MARK:- Properties
    
    var body: some View {
        NavigationView {
            List {
                MovieListHeaderView()
                    .listRowInsets(.init())
                ForEach(viewModel.movies, id: \.id) { movie in
                    MovieListItemView(with: movie)
                        .listRowInsets(.init())
                }
            }
            .navigationBarTitle("Think-it Star Wars", displayMode: .inline)
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(with: MovieListViewModel.mock)
    }
}
