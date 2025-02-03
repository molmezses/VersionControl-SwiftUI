//
//  SheetsBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 3.02.2025.
//

import SwiftUI

struct SheetsBC: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .font(.headline)
            .foregroundStyle(.black)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .sheet(isPresented: $showSheet) {
                //DO NOT ADD CONDITIONAL LOGİC try enum
                SecondView()
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondView()
//            })
        }
    }
}

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.red
                .ignoresSafeArea()
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding()
            }

        }
    }
}

#Preview {
    SheetsBC()
//    SecondView()
}
