//
//  ActionSheetBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 4.02.2025.
//

import SwiftUI

struct ActionSheetBC: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Click") {
            showActionSheet.toggle()
        }
        .confirmationDialog("text", isPresented: $showActionSheet) {
            Button("deneme1") {
                
            }
            Button("deneme1") {
                
            }
        }
    }
}

#Preview {
    ActionSheetBC()
}
