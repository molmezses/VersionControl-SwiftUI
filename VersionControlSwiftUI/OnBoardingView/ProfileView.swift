//
//  ProfileView.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 7.02.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundStyle(Color(.white) , Color(.gray).opacity(0.6))
            Text(currentUserName ?? "Your name here")
            Text("This is user \(currentUserAge ?? 89) years old")
            Text("Their gender is \(currentUserGender ?? "Non - Binary")")
            
            Text("Sign Out")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .onTapGesture {
                    signOut()
                }

        }
        .font(.title)
        .padding()
        .padding(.vertical)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .background(.white)
        .shadow(radius: 12)
        .padding()
    }
    
    func signOut(){
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        withAnimation(.spring){
            currentUserSignedIn = false
        }
    }
    
}

#Preview {
    ProfileView()
}
