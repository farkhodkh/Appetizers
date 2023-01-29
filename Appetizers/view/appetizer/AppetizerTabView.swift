//
//  ContentView.swift
//  Appetizers
//
//  Created by farkhod on 22.01.2023.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        
        TabView {
            AppetizerListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem{
                    Image(systemName: "basket")
                    Text("Order")
                }
        }
        .accentColor(Color.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
