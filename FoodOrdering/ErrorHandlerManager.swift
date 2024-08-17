//
//  ErrorHandlerManager.swift
//  FoodOrdering
//
//  Created by Miguel Agostinho on 16/08/2024.
//

import Foundation


enum ErrorHandler: Error{
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
