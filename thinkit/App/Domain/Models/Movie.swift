//
//  MovieModel.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation

struct Movie: Decodable {
    let title: String
    let episodeId: Int
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: String

    enum CodingKeys: String, CodingKey {
        case title, director, producer
        case episodeId = "episode_id"
        case openingCrawl = "opening_crawl"
        case releaseDate = "release_date"
    }
}

struct MovieResponse: Decodable {
    let count: Int
    let next: Int?
    let previous: Int?
    let result: [Movie]
}
