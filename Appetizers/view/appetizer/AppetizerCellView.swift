//
//  AppetizerCellView.swift
//  Appetizers
//
//  Created by farkhod on 23.01.2023.
//

import SwiftUI

struct AppetizerCellView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 70)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding()
        }
    }
}

struct AppetizerCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerCellView(appetizer: MockData.sampleAppetizer)
    }
}
