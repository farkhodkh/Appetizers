//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by farkhod on 22.01.2023.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
