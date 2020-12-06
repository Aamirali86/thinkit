//
//  MovieDetailView.swift
//  thinkit
//
//  Created by Amir on 05/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieDetailView: View {
    private let viewModel: MovieDetailViewModelType
    
    //MARK:- Init
    
    init(viewModel: MovieDetailViewModelType) {
        self.viewModel = viewModel
    }
    
    //MARK:- Properties
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                MovieDetailHeaderView(movie: viewModel.movie)
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Opening Crawl")
                        Text(viewModel.movie.openingCrawl)
                    }
                    Spacer()
                }
                .padding([.leading, .trailing], 10)
                
                HStack(spacing: 24) {
                    TitleDetailView(title: "Created",
                                    detail: viewModel.created ?? "",
                                    titleStyle: .style(.dark, .font(13)),
                                    descriptionStyle: .style(.dark, .font(14)))
                    TitleDetailView(title: "Edited",
                                    detail: viewModel.edited ?? "",
                                    titleStyle: .style(.dark, .font(13)),
                                    descriptionStyle: .style(.dark, .font(14)))
                    Spacer()
                }
                .padding([.leading, .trailing], 10)

                Spacer()
            }
            .navigationBarTitle(Text(viewModel.movie.title), displayMode: .inline)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MovieDetailView(viewModel: MovieDetailViewModel.mock)
        }
    }
}
