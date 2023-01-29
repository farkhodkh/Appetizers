//
//  AddToCartButton.swift
//  Appetizers
//
//  Created by farkhod on 28.01.2023.
//

import SwiftUI

struct AddToCartButton: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        Button {
            
        } label: {
            Text("\(appetizer.price, specifier: "%0.2f") - Add to cart")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 250, height: 50)
                .foregroundColor(Color.white)
                .background(Color.brandPrimary)
                .cornerRadius(10)
        }
        .padding(.bottom, 30)
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton(appetizer: MockData.sampleAppetizer)
    }
}
