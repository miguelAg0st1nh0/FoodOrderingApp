//
//  HomeView.swift
//  FoodOrdering
//
//  Created by Miguel Agostinho on 15/08/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var appetizers: [Appetizer] = []
    
    var body: some View {
        
        NavigationStack{
            List(appetizers){ appetizer in
                HStack(alignment: .top){
                        Image("food01")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .cornerRadius(50)
                            
                    VStack(alignment: .leading){
                            Text(appetizer.name)
                            .font(.headline)
                            Text(String (format: "£ %.2f", appetizer.price))
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        }
                    .padding(.leading)
                    .padding(.vertical, 30)
                        
                    }
                .padding(.vertical, 5)
                
            }
            .navigationTitle("Appetizers")
            .onAppear(){
                getAppetizers()
            }
            
        }
        
    }
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers{ result in
            DispatchQueue.main.async {
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            
        }
    }
    
}

#Preview {
    HomeView()
}
