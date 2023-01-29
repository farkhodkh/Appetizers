//
//  AppetizerContentView.swift
//  Appetizers
//
//  Created by farkhod on 28.01.2023.
//

import SwiftUI

struct AppetizerContentView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack(spacing: 40) {
            VStack {
                Text("Calories")
                    .bold()
                    .font(.caption)
                
                Text("\(appetizer.calories)")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .italic()
            }
            
            VStack {
                Text("Carbs")
                    .bold()
                    .font(.caption)
                
                Text("\(appetizer.carbs)")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .italic()
            }
            
            VStack {
                Text("Protein")
                    .bold()
                    .font(.caption)
                
                Text("\(appetizer.protein)")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .italic()
            }
        }
    }
}

struct AppetizerContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerContentView(appetizer: MockData.sampleAppetizer)
    }
}
