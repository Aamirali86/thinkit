//
//  MovieListHeaderView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListHeaderView: View {
    var body: some View {
        VStack {
            Image("ic-star-wars")
            HStack {
                Text("Total 6 Movies")
                    .foregroundColor(Color("lightGray"))
                    .multilineTextAlignment(.leading)
                    .padding([.leading], 8)
                Spacer()
            }
        }
        .background(Color("DarkBackground"))
    }
}

struct MovieListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListHeaderView()
    }
}
