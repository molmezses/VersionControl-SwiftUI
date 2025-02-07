//
//  OnBoardingView.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 6.02.2025.
//

import SwiftUI

//OnBoarding States:
/*
    1-> Welcome Screen
    2-> Add Name
    3-> Add Age
    4-> Add Gender
 */

struct OnBoardingView: View {
    
    @State var onBoardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 30
    @State var gender: String = ""
    @State var transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    var body: some View {
        ZStack {
            
            //content
            ZStack {
                switch onBoardingState{
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    Text("No")
                }
            
            }
            VStack {
                Spacer()
                bottomButton

            }
            .padding(30)
        }
    }
}

#Preview {
    OnBoardingView()
        .background(Color.purple)
}

//MARK: COMPONENTS

extension OnBoardingView{
    
    private var bottomButton: some View {
        Text(onBoardingState == 0 ? "Sign Up" :
                onBoardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .mask(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            Text("Find your match")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .overlay {
                    Capsule()
                        .frame(height: 3 )
                        .foregroundStyle(.white)
                        .offset(y:20)
                }
            Text("This is the #1 app for finfing your match online! In this tuturial we are passing some basic steps to get you started on your journey to finding your perfect match!")
                .foregroundStyle(.white)
                .fontWeight(.medium)
            Spacer()
            Spacer()
        }
        .padding(30)
        .multilineTextAlignment(.center)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40){
            Spacer()
            Text("Whats your name?")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            TextField("Add your name", text: $name)
                .font(.headline)
                .frame(height: 50)
                .padding(.horizontal)
                .background(Color.white)
                .mask(RoundedRectangle(cornerRadius: 10))
                .multilineTextAlignment(.leading)
            Spacer()
            Spacer()
        }
        .padding(30)
        .multilineTextAlignment(.center)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40){
            Spacer()
            Text("Whats your name?")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("\(String(format: "%.0f", age))")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...70 , step: 1)
                
            Spacer()
            Spacer()
        }
        .padding(30)
        .multilineTextAlignment(.center)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40){
            Spacer()
            Text("What's your gender?")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Picker(selection: $gender) {
                Text("Male").tag("Male").foregroundStyle(.white)
                Text("Female").tag("Female").foregroundStyle(.white)
                Text("Non-Binary").tag("NonBinary").foregroundStyle(.white)
            } label: {
                Text("Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .mask(RoundedRectangle(cornerRadius: 12))
            }
            .pickerStyle(.wheel)

                
            Spacer()
            Spacer()
        }
        .padding(30)
        .multilineTextAlignment(.center)
    }
    
}

//MARK: FUNCTİONS
extension OnBoardingView{
    func handleNextButtonPressed(){
        
        //CHECK INPUTS
        
        
        //GO TO NEXT SECTİON
        if onBoardingState == 3{
            //sign in
        }else{
            withAnimation(.spring){
                onBoardingState += 1
            }
        }
        
    }
}
