//
//  ModelBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 6.02.2025.
//

import SwiftUI

struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBC: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 32, isVerified: true),
        UserModel(displayName: "Mustafa", userName: "molmezses", followerCount: 121, isVerified: false),
        UserModel(displayName: "Ece", userName: "Tan", followerCount: 45, isVerified: true),
        UserModel(displayName: "Chris", userName: "ItsChris", followerCount: 213, isVerified: true),
    ]
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(users) { user in
                    HStack(spacing:14){
                        Circle()
                            .frame(width: 30, height: 30)
                        VStack(alignment: .leading){
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    ModelBC()
}

