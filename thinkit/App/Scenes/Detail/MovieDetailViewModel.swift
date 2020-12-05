//
//  MovieDetailViewModel.swift
//  thinkit
//
//  Created by Amir on 05/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation

protocol MovieDetailViewModelType {
    var created: String? { get }
    var edited: String? { get }
    var movie: Movie { get set }
}

class MovieDetailViewModel: MovieDetailViewModelType {
    var movie: Movie
    private let formatter: DateFormatter
    
    var created: String? {
        guard let date = formatter.date(from: movie.created) else { return nil }
        return formatter.string(from: date)
    }
    
    var edited: String? {
        guard let date = formatter.date(from: movie.created) else { return nil }
        return formatter.string(from: date)
    }
    
    //MARK:- Init
    
    init(movie: Movie) {
        self.movie = movie
        formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm.ssZ"
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
    }
}
