//
//  MovieListBuilder.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListBuilder {
    func makeView() -> some View {
        let service = MovieProvider()
        let viewModel = MovieListViewModel(service: service)
        let view = MovieListView(with: viewModel)
        return view
    }
}
