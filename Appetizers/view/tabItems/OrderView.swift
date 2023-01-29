//
//  OrderView.swift
//  Appetizers
//
//  Created by farkhod on 23.01.2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerCellView(appetizer: appetizer)
                        }
                        .onDelete(perform: order.remove)
                    }
                    .listStyle(PlainListStyle())

                    Button {

                    } label: {
                        let buttonLabel = "$\(order.totalPrice) - Add to cart"
                        AppMainButton(title: buttonLabel)
                    }
                    
                }
                .navigationTitle("🚟 Order")
                
                
                if(order.items.isEmpty) {
                    EmptyState(
                        imageName: "empty-order",
                        stateLabel: "You have no added any item yet"
                    )
                }
                
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
