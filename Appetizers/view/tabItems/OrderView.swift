//
//  OrderView.swift
//  Appetizers
//
//  Created by farkhod on 23.01.2023.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Order view")
                .navigationTitle("🚟 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
