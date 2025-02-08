//
//  ResizableSheetBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 8.02.2025.
//

import SwiftUI

struct ResizableSheetBC: View {
    
    @State var shoWSheet: Bool = false
    
    var body: some View {
        Button("Open"){
            shoWSheet.toggle()
        }
        .sheet(isPresented: $shoWSheet) {
            NextView()
//                .presentationDetents([.medium , .large])
                .presentationDetents([.fraction(0.2) , .medium , .large])
        }
    }
}

struct NextView: View {
    var body: some View {
        ZStack{
            Color.indigo.ignoresSafeArea()
            Text("Hello, World!")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ResizableSheetBC()
}
