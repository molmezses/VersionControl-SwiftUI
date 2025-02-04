//
//  NavigationBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 4.02.2025.
//

import SwiftUI

struct NavigationBC: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                NavigationLink("Other  Screeen", destination: MyOtherScreen())
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                            .foregroundStyle(.black)
                            .imageScale(.large)
                    }

                }
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.black)
                            .imageScale(.large)
                    }

                }
            }
            
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
                .navigationTitle("Teal Screen")
                .navigationBarBackButtonHidden()
                
            
            VStack{
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                NavigationLink("Other ", destination: Text("3rd Screen"))
            }
        }
        
    }
}

#Preview {
    NavigationBC()
}
