//
//  PopoverBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 4.02.2025.
//

import SwiftUI

struct PopoverBC: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    withAnimation(.spring) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                Spacer()
            }
            //METHOD -1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            //METHOD -2 - TRANSITION
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .transition(.move(edge: .bottom))
//                        .padding(.top , 200)
//                }
//            }
            //METHOD -3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top , 200)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
            
        }
    }
}

struct NewScreen: View {
    //eNVİRONMENT
    //@Environment(\.dismiss) var dismiss
    @Binding var showNewScreen : Bool
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.purple.ignoresSafeArea()
            
            Button {
                showNewScreen = false
                //dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

#Preview {
    PopoverBC()
//    NewScreen()
}
