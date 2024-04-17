//
//  Review.swift
//  MovieApp
//
//  Created by Gregori Farias on 04/16/24.
//

import Foundation

struct ReviewResponse: Codable {
    var results: [Review]?
}
struct Review: Codable ,Identifiable {
    var id: String?
    var author: String?
    var content: String?
}
