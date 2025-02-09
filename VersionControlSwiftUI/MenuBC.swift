//
//  MenuBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 9.02.2025.
//

import SwiftUI

struct MenuBC: View {
    var body: some View {
        Menu("Click Me") {
            Button("One") {
                
            }
            Button("Two") {
                
            }
            Button("Three") {
                
            }
            Button("Four") {
                
            }
        }
        .menuStyle(.automatic)
    }
}

#Preview {
    MenuBC()
}
