//
//  AppList.swift
//  PopulerAppsMVVM
//
//  Created by YUSUF ÖZATA on 2.01.2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let appList = try? JSONDecoder().decode(AppList.self, from: jsonData)

import Foundation

// MARK: - AppList
struct ApiList: Codable {
    let feed: FeedClass
}

struct FeedClass: Codable {
    let results: [Result]
}

struct Result: Codable {
    var name: String
    var date: String
    var image: String

    enum CodingKeys: String, CodingKey {
        case name = "artistName"
        case date = "releaseDate"
        case image = "artworkUrl100"
        
    }
}
