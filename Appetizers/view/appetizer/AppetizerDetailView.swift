//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by farkhod on 28.01.2023.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetails: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                AppetizerContentView(appetizer: appetizer)
            }
            
            Spacer()
            
            AddToCartButton(appetizer: appetizer)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            CloseViewButton(isShowingDetails: $isShowingDetails),
            alignment: .topTrailing
        )
        
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(
            appetizer: MockData.sampleAppetizer,
            isShowingDetails: .constant(true))
    }
}
