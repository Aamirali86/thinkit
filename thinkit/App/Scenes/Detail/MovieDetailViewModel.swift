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
    //MARK:- Properties
    
    var movie: Movie
    private let inputFormatter: DateFormatter
    private let outputFormatter: DateFormatter

    var created: String? {
        guard let date = inputFormatter.date(from: movie.created) else { return nil }
        return outputFormatter.string(from: date)
    }
    
    var edited: String? {
        guard let date = inputFormatter.date(from: movie.edited) else { return nil }
        return outputFormatter.string(from: date)
    }
    
    //MARK:- Init
    
    init(movie: Movie) {
        self.movie = movie
        inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'"
        inputFormatter.locale = Locale.current
        inputFormatter.timeZone = TimeZone.current
        
        outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "yyyy-MM-dd"
        outputFormatter.locale = Locale.current
        outputFormatter.timeZone = TimeZone.current
    }
}
