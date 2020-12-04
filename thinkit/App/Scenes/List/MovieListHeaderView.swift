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

        GeometryReader { reader in
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Spacer()
                    Image("ic-star-wars")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: reader.size.width * 0.35)
                    Spacer()
                }
                Text("Total 6 Movies")
                    .foregroundColor(Color("lightGray"))
                    .multilineTextAlignment(.leading)
            }
            .frame(width: reader.size.width)
            .background(Color("DarkBackground"))
        }
    }
}

struct MovieListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListHeaderView()
    }
}
