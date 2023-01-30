//
//  ContentView.swift
//  Appetizers
//
//  Created by farkhod on 22.01.2023.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {

            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "basket") }
                .badge(order.items.count)
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
