//
//  PopoverUpdateBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 9.02.2025.
//

import SwiftUI

struct PopoverUpdateBC: View {
    
    @State var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).ignoresSafeArea()
            
            Button("CLICK ME!") {
                showPopover.toggle()
            }
            .popover(isPresented: $showPopover) {
                Text("Pesardetodo")
                    .presentationCompactAdaptation(.popover)
            }
        }
    }
}

#Preview {
    PopoverUpdateBC()
}
