
import Foundation



struct ApiList: Decodable {
    let feed: Feed
}

// MARK: - Feed
struct Feed: Decodable {
    let results: [Result]
}


// MARK: - Result
struct Result: Decodable {
    let artistName: String
    let id: String
    let name: String
    let artworkUrl100: String
    let genres: [Genre]?
    let url: String?
    let contentAdvisoryRating: String?
}

// MARK: - Genre
struct Genre: Decodable {
    let genreID, name: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case genreID
        case name, url
    }
}
