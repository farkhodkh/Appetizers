//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by farkhod on 23.01.2023.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State var isShowingDetails: Bool = false
    @State var selectedAppetizer: Appetizer?
    
    var body: some View {
        
        ZStack {
            NavigationView {
                
                List(viewModel.appetizers) { appetizer in
                    AppetizerCellView(appetizer: appetizer)
                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetails = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetails)
            }
            .task {
                viewModel.updateAppetizersArray()
            }
            .blur(
                radius: isShowingDetails ? 20 : 0
            )
            
            if isShowingDetails {
                AppetizerDetailView(
                    appetizer: selectedAppetizer!,
                    isShowingDetails: $isShowingDetails
                )
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
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

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
