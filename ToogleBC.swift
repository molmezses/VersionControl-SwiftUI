//
//  ToogleBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 5.02.2025.
//

import SwiftUI

struct ToogleBC: View {
    
    @State var toggleIsOn : Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ToogleBC()
}
