struct Tweet: Codable, Identifiable {
    let createdAt: String
    let id: Int
    let text: String
    let user: User
    
    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case text
        case user
    }
}

struct User: Codable {
    let userId: String
    let displayName: String
    let imageName: String

    private enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case displayName = "display_name"
        case imageName = "image_name"
    }
}
