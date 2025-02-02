//  Binding.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 3.02.2025.
//

import SwiftUI

struct BindingBC: View {
    
    @State var backgroundColor : Color = .teal
    @State var title : String = "Titles"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack{
                Text(title)
                    .foregroundStyle(.white)
                    .font(.title)
                ButtonView(backC: $backgroundColor, title: $title)

            }
           
        }
    }
}

#Preview {
    BindingBC()
}

struct ButtonView: View {
    
    @Binding var backC : Color
    @State var buttonColor : Color = .red
    @Binding var title : String
    
    var body: some View {
        VStack {
            Button {
                backC = .black
                buttonColor = .indigo
                title = "selam"
            } label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
        }
    }
}
