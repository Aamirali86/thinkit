//
//  ContentFetchRepository.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation
import Combine

protocol MovieServiceType {
    func fetchMovies() -> AnyPublisher<MovieResponse, NetworkRequestError>
}

class MovieService: BaseRepository, MovieServiceType {

    typealias responseType = MovieResponse

    func fetchMovies() -> AnyPublisher<responseType, NetworkRequestError> {
        networkManager
            .execute(request: EndPointProvider(with: "https://swapi.dev/api/films/"))
            .decode(type: responseType.self, decoder: JSONDecoder())
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
