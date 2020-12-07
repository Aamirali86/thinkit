//
//  ActivityIndicator.swift
//  thinkit
//
//  Created by Amir on 07/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
        configure()
    }
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator(isAnimating: .constant(true), style: .medium)
    }
}

extension View where Self == ActivityIndicator {
    @discardableResult
    func configure() -> Self {
        Self.init(isAnimating: self.$isAnimating, style: self.style)
    }
}
