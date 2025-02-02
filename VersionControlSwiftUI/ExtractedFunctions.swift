//
//  ExtractedFunctions.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 2.02.2025.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor : Color = .blue
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer : some View{
        VStack {
            Text("Title")
                .font(.title)
            Button {
                buttonPressed()
            } label: {
                Text("Press Me ")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }

        }
    }
    
    func buttonPressed(){
        backgroundColor = .teal
    }
}

#Preview {
    ExtractedFunctions()
}
