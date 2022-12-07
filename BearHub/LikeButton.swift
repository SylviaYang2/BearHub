//
//  LikeButton.swift
//  BearHub
//
//  Created by Annie Lin on 12/7/22.
//

import Foundation
import SwiftUI



struct LikeButton : View {
    @State var isPressed = false
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .opacity(isPressed ? 1 : 0)
                .scaleEffect(isPressed ? 1.0 : 0.1)
                .animation(Animation.linear)
            Image(systemName: "heart")
        }.font(.system(size: 40))
            .onTapGesture {
                self.isPressed.toggle()
        }
        .foregroundColor(isPressed ? .red : .black)
    }
}
