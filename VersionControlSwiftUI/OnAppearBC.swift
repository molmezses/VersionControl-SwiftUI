//
//  OnAppearBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 5.02.2025.
//

import SwiftUI

struct OnAppearBC: View {
    
    @State var myText: String = "Start text"
    
    var body: some View {
        NavigationStack{
            ScrollView{
                Text(myText)
            }
            .navigationTitle("OnApper")
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    myText = "you started to text"
                }
                
            })
        }
    }
}

#Preview {
    OnAppearBC()
}
