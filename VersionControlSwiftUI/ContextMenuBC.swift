//
//  ContextMenuBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 4.02.2025.
//

import SwiftUI

struct ContextMenuBC: View {
    
    @State var backgroundColor : Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "flame")
                .font(.title)
            Text("Mustafa Ölmezses")
                .font(.headline)
            Text("IOS Developer")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .mask(RoundedRectangle(cornerRadius: 24))
        .contextMenu {
            Button {
                backgroundColor = .black
            } label: {
                Label("Item 1", systemImage: "flame")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                Label("Item 3", systemImage: "flame")
            }
            Button {
                backgroundColor = .indigo
            } label: {
                Label("Item 2", systemImage: "flame")
            }

        }
    }
}

#Preview {
    ContextMenuBC()
}
