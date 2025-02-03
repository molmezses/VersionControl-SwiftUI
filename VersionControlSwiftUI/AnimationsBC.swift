//
//  AnimationsBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 3.02.2025.
//

import SwiftUI

struct AnimationsBC: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                withAnimation(.default.delay(0.3).repeatCount(2)){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 10)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300,
                       alignment: .center)
                .rotationEffect(Angle(degrees:  isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                
            Spacer()
        }
    }
}

#Preview {
    AnimationsBC()
}
