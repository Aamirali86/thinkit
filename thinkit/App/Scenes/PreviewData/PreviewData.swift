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
                            openingCrawl: "It is a period of civil war. Rebel spaceships, striking  nfrom a hidden base, have won ntheir first victory against...",
                            director: "George Lucas",
                            producer: "Gary kurts",
                            releaseDate: "1077/25/05",
                            created: "2014/2/12",
                            edited: "2017/1/28")
}
