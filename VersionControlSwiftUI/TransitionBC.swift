//
//  Transition.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 3.02.2025.
//

import SwiftUI

struct TransitionBC: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment:.bottom){
            
            VStack{
                Button {
                    withAnimation(.spring()) {
                        showView.toggle()
                    }
                } label: {
                    Text("Button")
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(edges:.bottom)
    }
}

#Preview {
    TransitionBC()
}
