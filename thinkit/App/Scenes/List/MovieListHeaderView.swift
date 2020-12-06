//
//  MovieListHeaderView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListHeaderView: View {
    let count: Int
    
    init(count: Int) {
        self.count = count
    }
    
    var body: some View {
        VStack {
            Image("ic-star-wars")
            HStack {
                Text("Total \(count) Movies")
                    .foregroundColor(Color("lightGray"))
                    .multilineTextAlignment(.leading)
                    .padding(.all, 8)
                    .font(Font.custom("Avenir", size: 15).weight(.regular))
                Spacer()
            }
        }
        .background(Color("DarkBackground"))
    }
}

struct MovieListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListHeaderView(count: 6)
    }
}
