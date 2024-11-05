//
//  Challenge.swift
//  ViewsAndModifiers
//
//  Created by Sean Dooley on 05/11/2024.
//

import SwiftUI

struct Challenge: View {
    var body: some View {
        VStack {
            Text("Heading")
                .headingStyle()
            Text("Lorem ipsum ...")
        }
    }
}

#Preview {
    Challenge()
}

struct Heading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
            .padding()
    }
}

extension View {
    func headingStyle() -> some View {
        modifier(Heading())
    }
}
