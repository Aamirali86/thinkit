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
    }

    var body: some View {
        List {

        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(with: .mock)
    }
}
