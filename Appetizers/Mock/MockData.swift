//
//  MockData.swift
//  Appetizers
//
//  Created by farkhod on 29.01.2023.
//

import Foundation

struct MockData{

    static let sampleAppetizer = Appetizer(
        id: 1,
        name: "Asian Flank Steak",
        description: "This perfectly thin cut just melts in your mouth.",
        imageURL: "",
        protein: 14,
        carbs: 0,
        price: 8.99348,
        calories: 300
    )

    static let orderItem1 = Appetizer(
        id: 001,
        name: "Asian Flank Steak One",
        description: "This perfectly thin cut just melts in your mouth.",
        imageURL: "",
        protein: 14,
        carbs: 0,
        price: 11.99,
        calories: 300
    )
    
    static let orderItem2 = Appetizer(
        id: 002,
        name: "Asian Flank Steak Two",
        description: "This perfectly thin cut just melts in your mouth.",
        imageURL: "",
        protein: 14,
        carbs: 0,
        price: 12.99,
        calories: 300
    )
    
    static let orderItem3 = Appetizer(
        id: 003,
        name: "Asian Flank Steak Three",
        description: "This perfectly thin cut just melts in your mouth.",
        imageURL: "",
        protein: 14,
        carbs: 0,
        price: 13.99,
        calories: 300
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orderItems = [orderItem1, orderItem2, orderItem3]
}
