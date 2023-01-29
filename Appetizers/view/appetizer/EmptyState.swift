//
//  EmptyState.swift
//  Appetizers
//
//  Created by farkhod on 29.01.2023.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let stateLabel: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                
                Text(stateLabel)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(
            imageName: "empty-order",
            stateLabel: "Long long long description is here for testing"
        )
    }
}
