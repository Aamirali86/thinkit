//
//  PreviewData.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation

extension MovieListViewModel {
    static var mock = MovieListViewModel(service: MovieService.mock)
}

extension MovieService {
    static var mock = MovieService()
}
