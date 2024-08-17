//
//  Appetizer.swift
//  FoodOrdering
//
//  Created by Miguel Agostinho on 15/08/2024.
//

import Foundation


struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
    
}

struct MockData{
    
    static let sampleAppetizer = Appetizer(id: 0001, name: "This is the Name", description: "This is the description.", price: 9.99, imageURL: "", calories: 500, protein: 100, carbs: 70)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
} 
