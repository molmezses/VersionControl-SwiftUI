//
//  TapGestureBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 5.02.2025.
//

import SwiftUI

struct TapGestureBC: View {
    
    @State var isSelected : Bool = false
    
    var body: some View {
        VStack(spacing:40){
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 220)
                .foregroundStyle(isSelected  ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .mask(RoundedRectangle(cornerRadius: 25))
            }
            
            Text("Button")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .mask(RoundedRectangle(cornerRadius: 25))
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 3) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBC()
}
