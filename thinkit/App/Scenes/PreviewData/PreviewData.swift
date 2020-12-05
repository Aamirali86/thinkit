//
//  PreviewData.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation

extension MovieListViewModel {
    static var mock = MovieListViewModel(service: MovieProvider.mock)
}

extension MovieProvider {
    static var mock = MovieProvider()
}

extension Movie {
    static var mock = Movie(title: "A new hope",
                            episodeId: 1,
                            openingCrawl: "",
                            director: "George Lucas",
                            producer: "Gary kurts",
                            releaseDate: "1077/25/05")
}
