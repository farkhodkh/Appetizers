//
//  Order.swift
//  Appetizers
//
//  Created by farkhod on 29.01.2023.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func remove(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    var totalPrice: Double {
        items.reduce(0){
            $0 + $1.price
        }
    }
}
