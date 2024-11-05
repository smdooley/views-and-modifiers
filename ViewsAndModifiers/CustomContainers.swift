//
//  CustomContainers.swift
//  ViewsAndModifiers
//
//  Created by Sean Dooley on 05/11/2024.
//

import SwiftUI

struct CustomContainers: View {
    var body: some View {
        Spacer()
        
        GridStack(rows: 4, columns: 4) { row, col in
            Text("R\(row) C\(col)")
        }
        
        Spacer()
        
        GridStack(rows: 4, columns: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
        
        Spacer()
        
        GridStack(rows: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
        
        Spacer()
    }
}

#Preview {
    CustomContainers()
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}
