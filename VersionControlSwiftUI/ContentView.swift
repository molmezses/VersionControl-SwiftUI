//
//  ContentView.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 2.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("First Commit")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
