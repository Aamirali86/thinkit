//
//  MovieListViewModel.swift
//  thinkit
//
//  Created by Aamir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Combine

protocol MovieListViewModelType {
    func fetchMovies()
}

final class MovieListViewModel: ObservableObject {
    //TODO: All strings need to be changes to actual type
    @Published var movies: [Movie] = []
    private var subscriptions = Set<AnyCancellable>()
    private let service: MovieServiceType

    init(service: MovieServiceType) {
        self.service = service
    }

    func fetchMovies() {
        service.fetchMovies()
            .sink(receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    print(error.localizedDescription)
                }
            }, receiveValue: { [weak self] response in
                self?.processResponse(response: response)
            })
            .store(in: &subscriptions)
    }

    private func processResponse(response: MovieResponse) {
        movies = response.result
    }
}
