//
//  MovieListItemView.swift
//  thinkit
//
//  Created by Amir on 04/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct MovieListItemView: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("A new hope")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("lightGray"))
                Spacer()
                VStack(alignment: .leading) {
                    Text("Release data")
                        .foregroundColor(Color("lightGray"))
                    Text("1977/05/25")
                        .foregroundColor(Color("lightGray"))
                }
            }
            HStack(spacing: 16) {
                VStack(alignment: .leading) {
                    Text("Release data")
                        .foregroundColor(Color("lightGray"))
                    Text("1977/05/25")
                        .foregroundColor(Color("lightGray"))
                }
                VStack(alignment: .leading) {
                    Text("Release data")
                        .foregroundColor(Color("lightGray"))
                    Text("1977/05/25")
                        .foregroundColor(Color("lightGray"))
                }
                Spacer()
            }
            HStack {
                Text("It is a period of civil war. Rebel spaceships, striking  nfrom a hidden base, have won ntheir first victory against...")
                    .foregroundColor(Color("lightGray"))
                Spacer()
            }
        }
        .padding(EdgeInsets(top: 20, leading: 8, bottom: 20, trailing: 8))
        .background(Color("DarkBackground"))
    }
}

struct MovieListItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListItemView()
    }
}
