//
//  TabViewBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 5.02.2025.
//

import SwiftUI

struct TabViewBC: View {
    @State var selectedTab : Int = 0
    
    
    var body: some View {
//        TabView(selection: $selectedTab){
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("HOME")
//                }
//                .tag(0)
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
        
        TabView {
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.red)
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.blue)
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.teal)
            RoundedRectangle(cornerRadius: 25)
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
    
        
    }
}

#Preview {
    TabViewBC()
}

struct HomeView: View {
    
    @Binding var selectedTab : Int
    
    var body: some View {
        ZStack{
            Color.red
            
            VStack(spacing:24){
                Text("HOME TAB")
                    
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }

            }
        }
    }
}
