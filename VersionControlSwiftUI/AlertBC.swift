//
//  AlertBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 4.02.2025.
//

import SwiftUI

struct AlertBC: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Button")
        }
        .alert(Text("alert"), isPresented: $showAlert) {
            Text("butom")
        } message: {
            Text("deneme")
        }

        

    }
}

#Preview {
    AlertBC()
}
