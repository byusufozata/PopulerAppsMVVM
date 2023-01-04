
import Foundation



struct ApiList: Codable {
    let feed: Feed
}

// MARK: - Feed
struct Feed: Codable {
    let results: [Result]
}


// MARK: - Result
struct Result: Codable {
    let artistName: String
    let id: String
    let name: String
    let artworkUrl100: String
    let genres: [Genre]?
    let url: String?
    let contentAdvisoryRating: String?
}

// MARK: - Genre
struct Genre: Codable {
    let genreID, name: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case genreID
        case name, url
    }
}
