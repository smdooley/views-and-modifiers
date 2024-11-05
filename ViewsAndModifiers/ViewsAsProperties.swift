//
//  ViewsAsProperties.swift
//  ViewsAndModifiers
//
//  Created by Sean Dooley on 05/11/2024.
//

import SwiftUI

struct ViewsAsProperties: View {
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    var motto3: some View {
        Text("Draco titillandus")
    }
    
    var spells1: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    var spells2: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spells3: some View {
        Text("Lumos")
        Text("Obliviate")
    }

    var body: some View {
        VStack(spacing: 25) {
            motto1
            motto2
            
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            
            spells1
            spells2
            spells3
        }
    }
}

#Preview {
    ViewsAsProperties()
}
