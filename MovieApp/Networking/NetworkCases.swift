//
//  NetworkCases.swift
//  MovieApp
//
//  Created by Gregori Farias on 04/16/24.
//

import Foundation
struct API {
    static let key = "7dbb9ba3b79fd9fa4dff99b4ee93f721"
}
enum MovieCases: String {
    case nowPlaying = "now_playing"
    case upcoming = "upcoming"
    case popular = "popular"
    public var urlString: String {
        "\(MovieDownloadManager.baseURL)\(self.rawValue)?api_key=\(API.key)&language=en-US&page=1"
    }
}
