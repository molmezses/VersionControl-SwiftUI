//
//  IntroView.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 6.02.2025.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color.mint , Color.cyan]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height
            )//end Radial
            .ignoresSafeArea()
            
            if currentUserSignedIn{
                Text("Profil View")
            }else{
                Text("OnBoardingView")
            }
            
            //if user signed in
            //profilvİEW
            //else
            //onboarding view
        }
    }
}

#Preview {
    IntroView()
}
