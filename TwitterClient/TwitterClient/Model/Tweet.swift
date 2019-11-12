
struct Tweet: Codable, Identifiable {
    let createdAt: String
    let id: Int
    let text: String
    let userId: String
    let displayName: String

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case text
        case userId = "user_id"
        case displayName = "display_name"
    }
}
