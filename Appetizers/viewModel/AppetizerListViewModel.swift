//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by farkhod on 26.01.2023.
//

import Foundation
import UIKit

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers = [Appetizer]()
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetails: Bool = false
    
    func updateAppetizersArray() {
        isLoading = true
        NetworkManager.shared.getAppetizers{ [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                        
                    case .invalidUrl:
                        self.alertItem = AlertContext.invalidUrl
                    }
                }
                
                self.isLoading = false
            }
        }
    }
}
