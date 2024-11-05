//
//  ConditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by Sean Dooley on 05/11/2024.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedText = false

    var body: some View {
        Button("Hello World") {
            // flip the Boolean between true and false
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
}

#Preview {
    ConditionalModifiers()
}
