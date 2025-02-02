//
//  ExtractSuviews.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 2.02.2025.
//

import SwiftUI

struct ExtractSuviews: View {
    var body: some View {
        ZStack{
            //background
            Color.gray.ignoresSafeArea()
            
            //content
            contentLayer
           
        }
    }
    
    var contentLayer: some View {
        VStack{
            MyItem(count: 1, title: "Apples", color: .red)
            MyItem(count: 2, title: "Oranges", color: .orange)
            MyItem(count: 32, title: "Blueberry", color: .blue)
        }
    }
}

#Preview {
    ExtractSuviews()
}

struct MyItem: View {
    
    var count : Int
    var title : String
    var color : Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .font(.headline)
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
