//
//  AccountView.swift
//  FoodOrdering
//
//  Created by Miguel Agostinho on 15/08/2024.
//

import SwiftUI

struct AccountView: View {
    
    @State private var password = ""
    @State private var username = ""
    var body: some View {
        NavigationStack{
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            
                .navigationTitle("Account")
            
            Button(action: validateCredentials){
                Text("Login")
            }
        }
        
        
    }
    
    func validateCredentials(){
        
        if(username == "Admin" && password == "admin" ){
            print("Login Sucessfull!")
        } else {
            print("Username or password incorrect!")
        }
        
    }
    
}

#Preview {
    AccountView()
}
