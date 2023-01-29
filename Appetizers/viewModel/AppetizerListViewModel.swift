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
                        alertItem = AlertContext.invalidData
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                        
                    case .invalidUrl:
                        alertItem = AlertContext.invalidUrl
                    }
                }
                
                isLoading = false
            }
        }
    }
}
