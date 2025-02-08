//
//  NavigationStackBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 8.02.2025.
//

import SwiftUI


/*
 Navigtaion linkli label ve desitnation olarak kullanırsan her link için syafa oluştutulur bu verrimsiz ve yavaş bir uygulama çeşitidir bunun önüne geçmek için lazy kullanmamız gerekiyor onun için ise -> NavgitsonDestination
 
 */

struct NavigationStackBC: View {
    
    let fruits: [String] = [
        "Apple" , "Banana", "Coconout"
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView(content: {
                VStack(spacing:42){
                    
                    ForEach(fruits , id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { num in
                        NavigationLink(value: num) {
                            Text("Screen \(num)")
                        }
                    }
                    
                }
            })
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                SecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Screen: \(value)")
            }
        }
    }
}

struct SecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCRREN \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBC()
}
