//
//  AsyncImage.swift
//  MovieApp
//
//  Created by Gregori Farias on 04/16/24.
//

import SwiftUI

struct AsyncImage<Placeholder: View>: View {
    
    @StateObject private var loader: ImageLoader
    private let placeholder: Placeholder
    private let image: ((UIImage) -> Image)
    
    init(url: URL,
         @ViewBuilder placeholder: () -> Placeholder,
         @ViewBuilder image: @escaping (UIImage) -> Image = Image.init(uiImage: )) {
        self.placeholder = placeholder()
        self.image = image
        _loader = StateObject(wrappedValue: ImageLoader(url: url, cache: Environment(\.imageCache).wrappedValue))
    }
    
    var body: some View{
        content.onAppear(perform: loader.load)
    }
     
    private var content:some View {
        Group {
            if loader.image != nil {
                image(loader.image ?? #imageLiteral(resourceName: "empty"))
            } else {
                placeholder
            }
        }
    }
}
