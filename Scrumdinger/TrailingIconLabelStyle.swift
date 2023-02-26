//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Arunesh Mishra on 2/20/23.
//

import SwiftUI

struct TrailingIconLabelStyle : LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// TODO: what does this "where" syntax mean ?
//
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
