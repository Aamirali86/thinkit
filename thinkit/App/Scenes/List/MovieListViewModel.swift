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
    var movies: [Movie] { get }
    var count: Int { get }
    func fetchMovies()
}

final class MovieListViewModel: MovieListViewModelType {
    //MARK:- Properties
    
    @Published private(set) var movies: [Movie] = []
    @Published var count: Int = 0
    private var subscriptions = Set<AnyCancellable>()
    private let service: MovieProviderType
    
    //MARK:- Init

    init(service: MovieProviderType) {
        self.service = service
        fetchMovies()
    }
    
    //MARK:- Functions

    func fetchMovies() {
        service.fetchMovies()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    print(error.localizedDescription)
                }
            }, receiveValue: { [weak self] response in
                self?.movies = response.results
                self?.count = response.count
            })
            .store(in: &subscriptions)
    }
}
