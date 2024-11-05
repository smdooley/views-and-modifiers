//
//  ViewComposition.swift
//  ViewsAndModifiers
//
//  Created by Sean Dooley on 05/11/2024.
//

import SwiftUI

struct ViewComposition: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
            
            CapsuleText2(text: "First")
                .foregroundStyle(.white)
            CapsuleText2(text: "Second")
                .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    ViewComposition()
}

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct CapsuleText2: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}
