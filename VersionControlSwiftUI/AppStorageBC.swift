//
//  AppStorageBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 6.02.2025.
//

import SwiftUI

struct AppStorageBC: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing:20){
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName{
                Text(name)
            }
            
            Button("Save") {
                let name = "Mustafa"
                currentUserName = name
            }
        }
        
    }
}

#Preview {
    AppStorageBC()
}
