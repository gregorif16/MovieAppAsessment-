//
//  ImageCacheKey.swift
//  MovieApp
//
//  Created by Gregori Farias on 04/16/24.
//

import SwiftUI

struct ImageCacheKey:EnvironmentKey{
    static let defaultValue: ImageCache = TempImageCache()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get {
            self[ImageCacheKey.self]
        }
        set {
            self[ImageCacheKey.self] = newValue
        }
    }
}
