//
//  AlertItem.swift
//  Appetizers
//
//  Created by farkhod on 26.01.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server error"), message: Text("The data received from the server is invalid"), dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server error"), message: Text("Invalid response from the server"), dismissButton: .default(Text("OK")))
    static let invalidUrl = AlertItem(title: Text("Server error"), message: Text("Could not connect to the server"), dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Parsing error"), message: Text("The data parsing could not be completed"), dismissButton: .default(Text("OK")))
}
