//
//  FocusStateBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 8.02.2025.
//

import SwiftUI


enum FocusedField {
    case username
    case password
}

struct FocusStateBC: View {
    
    @State var username: String = ""
//    @FocusState var usernameInFocus: Bool
    
    @State var password: String = ""
//    @FocusState var passwordInFocus: Bool
    
    @FocusState var focusInField: FocusedField?
    
    var body: some View {
        VStack{
            TextField("Enter a Username...", text: $username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
//                .focused($usernameInFocus)
                .focused($focusInField, equals: .username)
            
            TextField("Enter a Password...", text: $password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 12))
//                .focused($passwordInFocus)
                .focused($focusInField, equals: .password)
            
//            Button("Press") {
//                usernameInFocus.toggle()
//            }
            
            Button("Sign up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid{
                    print("Sign up successfull")
                }else if usernameIsValid{
//                    usernameInFocus = false
//                    passwordInFocus = true
                    focusInField = .password
                }else{
//                    usernameInFocus = true
//                    passwordInFocus = false
                    focusInField = .username
                }
            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBC()
}
