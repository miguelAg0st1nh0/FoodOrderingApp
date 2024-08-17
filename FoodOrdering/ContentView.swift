//
//  ContentView.swift
//  FoodOrdering
//
//  Created by Miguel Agostinho on 15/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            
            
        }
        .tint(Color("brandPrimary"))
        
    }
}

#Preview {
    ContentView()
}
