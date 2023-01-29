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

//MARK: - Network error Alerts
struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server error"), message: Text("The data received from the server is invalid"), dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server error"), message: Text("Invalid response from the server"), dismissButton: .default(Text("OK")))
    static let invalidUrl = AlertItem(title: Text("Server error"), message: Text("Could not connect to the server"), dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Parsing error"), message: Text("The data parsing could not be completed"), dismissButton: .default(Text("OK")))
}

//MARK: - Account form error Alerts
struct AccountFormValidationAlerts {
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please, ensure all fields in the form have been filled out."), dismissButton: .default(Text("OK")))
    
    static let invalidEMail = AlertItem(title: Text("Invalid E-Mail"), message: Text("Please, ensure your e-mail is correct."), dismissButton: .default(Text("OK")))
}

//MARK: - User data saving Alert
struct UserDataSaveAlerts {
    
    static let userSaveSuccess = AlertItem(title: Text("User Saved"), message: Text("User data changes saved."), dismissButton: .default(Text("OK")))
    
    static let userSaveError = AlertItem(title: Text("User Save Error"), message: Text("User data changes not saved."), dismissButton: .default(Text("OK")))
}
