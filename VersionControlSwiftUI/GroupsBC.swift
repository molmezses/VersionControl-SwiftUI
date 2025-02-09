//
//  GroupsBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 9.02.2025.
//

import SwiftUI

struct GroupsBC: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello world")
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .foregroundStyle(.green)
            .font(.title)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupsBC()
}
