//
//  ListSwipeActions.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 7.02.2025.
//

import SwiftUI

struct ListSwipeActions: View {
    
    @State var fruits: [String] = [
        "apPLE" , "banana" , "Strawberry" , "Coconaout"
    ]
    
    var body: some View {
        List {
            ForEach(fruits , id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archvie") {
                            
                        }
                        .tint(.black)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Junk") {
                            
                        }
                        .tint(.orange)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.purple)
                    }
                    
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListSwipeActions()
}
