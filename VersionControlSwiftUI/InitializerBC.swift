//
//  InitializerBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 2.02.2025.
//

import SwiftUI

struct InitializerBC: View {
    
    let backgroundColor : Color
    let count : Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple{
            self.title = "Apple"
            self.backgroundColor = .red
        }else if fruit == .orange{
            self.title = "Orange"
            self.backgroundColor = .orange
        }else if fruit == .blueberry{
            self.backgroundColor = .blue
            self.title = "Blueberry"
        }else{
            self.backgroundColor = .gray
            self.title = "Unknown"
        }
    }
    
    enum Fruit {
    case apple
    case orange
    case blueberry
    }
    
    var body: some View {
        VStack(spacing:12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150, alignment: .center)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    HStack{
        InitializerBC(count: 21, fruit: .apple)
        InitializerBC(count: 43, fruit: .orange)
        
    }
}
