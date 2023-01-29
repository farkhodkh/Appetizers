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

struct MockData{
    //{"calories":300,"price":8.99,"id":1,"description":"This perfectly thin cut just melts in your mouth.","carbs":0,"protein":14,"imageURL":"https:\/\/seanallen-course-backend.herokuapp.com\/images\/appetizers\/asian-flank-steak.jpg","name":"Asian Flank Steak"}
    
    static let sampleAppetizer = Appetizer(
        id: 1,
        name: "Asian Flank Steak",
        description: "This perfectly thin cut just melts in your mouth.",
        imageURL: "",
        protein: 14,
        carbs: 0,
        price: 8.99,
        calories: 300
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
