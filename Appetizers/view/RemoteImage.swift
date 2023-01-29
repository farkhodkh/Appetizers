//
//  RemoteImage.swift
//  Appetizers
//
//  Created by farkhod on 27.01.2023.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image:Image? = nil
    
    func load(from imageUrl: String) {
        NetworkManager.shared.downloadImage(from: imageUrl) { uiImage in
            
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{imageLoader.load(from: urlString)}
    }
}
