//
//  AccountView.swift
//  Appetizers
//
//  Created by farkhod on 23.01.2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
 
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    
                    TextField("First Name", text: $viewModel.user.firstName)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                    
                    TextField("E-mail", text: $viewModel.user.eMail)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(.none)
                    
                    DatePicker(
                        "Birthday",
                        selection: $viewModel.user.birthdate,
                        displayedComponents: .date
                    )
                    
                    Button{
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                        
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                    
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("👦 Account")
        }
        .onAppear{
            viewModel.retriveUsedData()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton
            )
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
