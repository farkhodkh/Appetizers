//
//  CloseViewButton.swift
//  Appetizers
//
//  Created by farkhod on 28.01.2023.
//

import SwiftUI

struct CloseViewButton: View {
    @Binding var isShowingDetails: Bool
    
    var body: some View {
        Button {
            isShowingDetails = false
        } label: {
            ZStack{
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }
    }
}

struct CloseViewButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseViewButton(isShowingDetails: .constant(true))
    }
}
