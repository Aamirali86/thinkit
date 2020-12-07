//
//  MovieListView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI
import Combine

struct MovieListView<Model: MovieListViewModelType>: View {
    @ObservedObject private var viewModel: Model
    @State var isLoading = true
    
    //MARK:- Init
    
    init(with viewModel: Model) {
        self.viewModel = viewModel
    }

    //MARK:- Properties
    
    var body: some View {
        NavigationView {
            if isLoading {
                ActivityIndicator(isAnimating: $isLoading, style: .medium)
            } else {
                List {
                    MovieListHeaderView(count: viewModel.count)
                        .listRowInsets(.init())
                    if isLoading {
                    }
                    ForEach(viewModel.movies, id: \.id) { movie in
                        MovieListItemView(with: movie)
                    }
                    .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                }
                .navigationBarTitle("Think-it Star Wars", displayMode: .inline)
                .background(Color("lightGray"))
            }
        }
        .onReceive(viewModel.isLoading) {
            self.isLoading = $0
        }
    }
    
    var loader: some View {
        ActivityIndicator(isAnimating: $isLoading, style: .medium)
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(with: MovieListViewModel.mock)
    }
}
