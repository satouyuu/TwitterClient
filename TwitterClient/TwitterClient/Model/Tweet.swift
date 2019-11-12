
struct Tweet: Codable, Identifiable {
    let createdAt: String
    let id: Int
    let text: String
    let user: String

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case text
        case user
    }
}
