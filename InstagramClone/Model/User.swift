//
//  User.swift
//  InstagramClone
//
//  Created by Miaomiao Shi on 25/08/2024.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-2", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom-2", fullname: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "ironman", fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "blackpanther", fullname: nil, bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman", fullname: "Peter Parker", bio: "Test bio", email: "spiderman@gmail.com")
    ]
}
