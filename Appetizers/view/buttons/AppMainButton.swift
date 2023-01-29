//
//  AddToCartButton.swift
//  Appetizers
//
//  Created by farkhod on 28.01.2023.
//

import SwiftUI

struct AppMainButton: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .foregroundColor(Color.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AppMainButton(title: "$\(9.999999) - Add to cart")
    }
}
