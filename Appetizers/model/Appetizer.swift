//
//  Appetizer.swift
//  Appetizers
//
//  Created by farkhod on 23.01.2023.
//


import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let protein: Int
    let carbs: Int
    let price: Double
    let calories: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}
