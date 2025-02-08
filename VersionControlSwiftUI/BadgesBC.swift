//
//  BadgesBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 8.02.2025.
//

import SwiftUI

//list or Tabview

struct BadgesBC: View {
    var body: some View {
        TabView {
            Tab("House", systemImage: "house") {
                Text("Home")
            }
            .badge("New")
            Tab("Search", systemImage: "magnifyingglass") {
                Text("Search")
            }
            .badge(3)
            Tab("Send", systemImage: "paperplane") {
                Text("Send")
            }
            Tab("Profile", systemImage: "person") {
                Text("Profile")
            }
        }
    }
}

#Preview {
    BadgesBC()
}
