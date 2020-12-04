//
//  AppRouter.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

class AppRouter {
    func start() -> some View {
        return MovieListBuilder().makeView()
    }
}
