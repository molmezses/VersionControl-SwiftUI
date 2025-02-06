//
//  ViewModelBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 6.02.2025.
//

import SwiftUI

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

//Observable Object -> Gözlenlemenebilir obje
class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Banana", count: 23)
        let fruit2 = FruitModel(name: "Strawberry", count: 432)
        let fruit3 = FruitModel(name: "Coconat", count: 234)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }

    }
    
    func deleteFruit(index : IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBC: View {
    /*
     @OBSERVEDOBJECT-> her olsuturuldugunde bilgiler sıfırlanır önceki tanımladıgın değerleri sabit kalır yeni eklenen şeyler değişmez -> alt görünümler için
     
     @STATEOBJEXT -> Değişiklikkler korunur -> oluşturulma esnaında kullan
     
     */
    @StateObject var viewModel: FruitViewModel = FruitViewModel()
     
    
    var body: some View {
        NavigationStack{
            List {
                
                if viewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(viewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: viewModel.deleteFruit)
                }

            }
            .navigationTitle("Fruit List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        RandomScreen()
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }

                }
            })
            .onAppear(){
                viewModel.getFruits()
            }
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                dismiss()
            } label: {
                Text("Go Back")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }

        }
    }
    
}

#Preview {
    ViewModelBC()
//    RandomScreen()
}
