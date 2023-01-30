//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by farkhod on 29.01.2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("user") private var userData: Data?
    @Published var alertItem: AlertItem?
    @Published var user = User()
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = UserDataSaveAlerts.userSaveSuccess
        } catch {
            alertItem = UserDataSaveAlerts.userSaveError
        }
    }
    
    func retriveUsedData() {
        guard let userData else { return }
        do{
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = UserDataSaveAlerts.userSaveError
        }
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty
                && !user.lastName.isEmpty
                && !user.eMail.isEmpty else {
            alertItem = AccountFormValidationAlerts.invalidForm
            return false
        }
        
        guard user.eMail.isValidEmail else {
            alertItem = AccountFormValidationAlerts.invalidEMail
            return false
        }
        
        return true
    }

}
