//
//  ObservableMacroBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 9.02.2025.
//

import SwiftUI

@Observable class ObservableViewModel {
     var title: String = "Some title" // yayınlanmış
    @ObservationIgnored var value: String = "Some title" // yayınlamak istemiyorsan
    
}

struct ObservableMacroBC: View {
    //StateObject use ->
    @State var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            Button {
                viewModel.title = "New title"
            } label: {
                Text(viewModel.title)
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
            
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    //ObsarvedObject use ->
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button {
            viewModel.title = "xvczxczvxzcv"
        } label: {
            Text(viewModel.title)
        }
    }
}

struct SomeThirdView: View{
    
    
    //EnvironmentObject use ->
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button {
            viewModel.title = "New "
        } label: {
            Text(viewModel.title)
        }
    }
}

#Preview {
    ObservableMacroBC()
}
