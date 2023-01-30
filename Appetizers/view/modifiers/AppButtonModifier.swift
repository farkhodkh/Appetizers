//
//  AppButtonModifier.swift
//  Appetizers
//
//  Created by farkhod on 29.01.2023.
//

import SwiftUI

struct AppButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
