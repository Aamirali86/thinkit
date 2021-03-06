//
//  ContentFetchRepository.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation
import Combine

protocol MovieProviderType {
    /// Fetch currently available movies
    func fetchMovies() -> AnyPublisher<MovieResponse, NetworkRequestError>
}

////// A class encapsulating logic to provide content for movies
final class MovieProvider: MovieProviderType {
    //MARK:- Properties
    
    typealias ResponseType = MovieResponse
    private let movieAPI: MovieAPI
    
    //MARK:- Init
    
    init(movieAPI: MovieAPI = NetworkManager.getSharedInstance()) {
        self.movieAPI = movieAPI
    }
    
    //MARK:- Functions

    func fetchMovies() -> AnyPublisher<ResponseType, NetworkRequestError> {
        movieAPI
            .requestMovies()
            .decode(type: ResponseType.self, decoder: JSONDecoder())
            .mapError { error in
                if let error = error as? NetworkRequestError {
                    return error
                } else {
                    return NetworkRequestError.serverError(error: error.localizedDescription)
                }
            }
            .eraseToAnyPublisher()
    }
}

/// A type representing Movies required network data access
protocol MovieAPI {
    func requestMovies() -> AnyPublisher<Data, NetworkRequestError>
}

extension NetworkManager: MovieAPI {
    func requestMovies() -> AnyPublisher<Data, NetworkRequestError> {
        execute(request: EndPointProvider(with: "https://swapi.dev/api/films/"))
    }
}
