//
//  ListBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 4.02.2025.
//

import SwiftUI

struct ListBC: View {
    
    @State var fruits: [String] = ["Apple" , "Banana" , "Orange" , "Mango" , "Pineapple"]
    @State var veggies : [String] = [ "Banana" , "Orange" , "Mango" , "Pineapple"]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(veggies , id:\.self) { veggie in
                        Text(veggie)
                    }
                } header: {
                    HStack{
                        Text("Deneme")
                        Image(systemName: "person.crop.circle")
                            .imageScale(.large)
                            .foregroundStyle(.blue)
                    }
                }

                Section("Fruits") {
                    ForEach(fruits , id: \.self) { fruit in
                        Text(fruit)
                            .foregroundStyle(.green)
                    }
                    .onDelete { indexSet in
                        //                    fruits.remove(atOffsets: indexSet)
                        delete(indexSet: indexSet)
                    }
                    .onMove { indexSet, toOffSet in
                        fruits.move(fromOffsets: indexSet, toOffset: toOffSet)
                    }
                }
                Section("Veggies") {
                    ForEach(veggies , id:\.self) { veggie in
                        Text(veggie)
                    }
                }
            }
            .tint(.green)
            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        fruits.append("Coconut")
                    } label: {
                        Image(systemName: "plus.square.fill")
                            .imageScale(.large)
                            .foregroundStyle(.green)
                    }

                }
            }
        }
        .tint(.red)
    }
    
    func delete(indexSet : IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListBC()
}
