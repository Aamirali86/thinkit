//
//  TitleDetailView.swift
//  thinkit
//
//  Created by Amir on 06/12/2020.
//  Copyright © 2020 Thinkit. All rights reserved.
//

import SwiftUI

struct TitleDetailView: View {
    enum Style {
        case style(color, font)
        
        static var `defaultTitleStyle` = style(.light, .font(9))
        static var `defaultDescriptionStyle` = style(.light, .font(13))

        enum color {
            case light
            case dark
            
            var foregroundColor: Color {
                switch self {
                   case .light: return Color("lightGray")
                   case .dark: return Color("DarkBackground")
                }
            }
        }
        
        enum font {
            case font(CGFloat)
            
            var font: Font {
                switch self {
                    case .font(let size): return Font.custom("Avinir", size: size).weight(.regular)
                }
            }
        }
        
    }
    
    let title: String
    let detail: String
    let titleStyle: Style
    let descriptionStyle: Style

    init(title: String,
         detail: String,
         titleStyle: Style = .`defaultTitleStyle`,
         descriptionStyle: Style = .`defaultDescriptionStyle`) {
        self.title = title
        self.detail = detail
        self.titleStyle = titleStyle
        self.descriptionStyle = descriptionStyle
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            if case let .style(color, font) = titleStyle {
                Text(title)
                    .font(font.font)
                    .foregroundColor(color.foregroundColor)
            }
            if case let .style(color, font) = descriptionStyle {
                Text(detail)
                    .font(font.font)
                    .foregroundColor(color.foregroundColor)
                    .lineLimit(1)
            }
        }
        
    }
}

struct TitleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TitleDetailView(title: "Director", detail: "The new era")
    }
}
