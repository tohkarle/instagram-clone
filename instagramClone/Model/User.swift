//
//  User.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(
            id: NSUUID().uuidString,
            username: "tohkarle",
            profileImageUrl: "profilePicture1",
            fullName: "Toh Kar Le",
            bio: "NTU CS Year 2",
            email: "tester@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "tohkarle2",
            profileImageUrl: "profilePicture1",
            fullName: "Toh Kar Le",
            bio: "NTU CS Year 2",
            email: "tester2@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "tohkarle3",
            email: "tester3@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "tohkarle4",
            profileImageUrl: "profilePicture1",
            fullName: "Toh Kar Le",
            bio: "NTU CS Year 2",
            email: "tester4@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "tohkarle5",
            profileImageUrl: "profilePicture1",
            bio: "NTU CS Year 2",
            email: "tester5@gmail.com"),
        .init(
            id: NSUUID().uuidString,
            username: "tohkarle6",
            profileImageUrl: "profilePicture1",
            fullName: "Toh Kar Le",
            email: "tester6@gmail.com"
        )
    ]
}
