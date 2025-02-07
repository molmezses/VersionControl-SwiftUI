//
//  ButtonStyleBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 7.02.2025.
//

import SwiftUI

struct ButtonStyleBC: View {
    var body: some View {
        VStack {
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            
        }
        .padding()
    }
}

#Preview {
    ButtonStyleBC()
}
