//
//  BackgroundMaterialsBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 7.02.2025.
//

import SwiftUI

struct BackgroundMaterialsBC: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .ignoresSafeArea()
        .background(
            Image("images")
                .resizable()
        )
    }
}

#Preview {
    BackgroundMaterialsBC()
}
