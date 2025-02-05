//
//  IfLetGuardBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 5.02.2025.
//

import SwiftUI

struct IfLetGuardBC: View {
    
    @State var currentUserID: String? = "DENEM123"
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Here we practicing safe coding")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData(){
        
        if let userID = currentUserID{ //Eğer kullanıcı varsa ve oturum açmışsa verileri yükle senarysou
            isLoading = true
            DispatchQueue.main.asyncAfter(wallDeadline: .now() + 2){
                displayText = "New Data! and User ID : \(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error . This is no User Id"
        }

    }
    
    func loadData2(){
        
        guard  let userID = currentUserID else {
            displayText = "Error . This is no User Id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 2){
            displayText = "New Data! and User ID : \(userID)"
            isLoading = false
        }
        
    }
    
}

#Preview {
    IfLetGuardBC()
}
