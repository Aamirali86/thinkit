//
//  BaseRepository.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import Foundation

class BaseRepository {
    let networkManager: NetworkManagerType

    init(with networkManager: NetworkManagerType = NetworkManager.getSharedInstance()) {
        self.networkManager = networkManager
    }
}
