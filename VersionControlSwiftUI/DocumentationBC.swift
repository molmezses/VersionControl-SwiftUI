//
//  DocumentationBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 5.02.2025.
//

import SwiftUI

struct DocumentationBC: View {
    
    //MARK: PROPORTIES
    @State var data: [String] = [
        "Apple" , "Banana" , "Orange" , "Pineapple"
    ]
    
    @State var showAlert: Bool  = false
    
    //MARK: BODY
    var body: some View {
        
        //Working tody - things to do
        //1-> Fix title
        //2-> Fix Alert
        //3-> Fix something else
        
        /*
         Working today
         1-> Fix title
         2-> Fix alert
         3-> Fix something else
         
         */
        
        
        NavigationStack{
            ScrollView {
                Text("Hello")
                ForEach(data, id:\.self) { name in
                    Text(name)
                }
            }
            .navigationTitle("Documentation")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                }
            }
            .alert("Alert", isPresented: $showAlert) {
                Button {} label: {
                    Text("oK")
                }

            }
        }
    }
}

//MARK: PREVIEW

#Preview {
    DocumentationBC()
}
