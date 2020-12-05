//
//  MovieListViewModel.swift
//  thinkit
//
//  Created by Aamir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation
import Combine

protocol MovieListViewModelType: ObservableObject {
    var movies: [Movie] { get set }
    func fetchMovies()
}

final class MovieListViewModel: MovieListViewModelType {
    @Published var movies: [Movie] = []
    private var subscriptions = Set<AnyCancellable>()
    private let service: MovieProviderType

    init(service: MovieProviderType) {
        self.service = service
        fetchMovies()
    }

    func fetchMovies() {
        service.fetchMovies()
            .receive(on: DispatchQueue.main)
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
        movies = response.results
    }
}
