//
//  Post.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    var caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now.",
              likes: 369,
              imageUrl: "profilePicture1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
        ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now.",
              likes: 3693,
              imageUrl: "profilePicture1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]
        ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now.",
              likes: 36936,
              imageUrl: "profilePicture1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]
        ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now.",
              likes: 369369,
              imageUrl: "profilePicture1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]
        ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now.",
              likes: 3693693,
              imageUrl: "profilePicture1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]
        ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now.",
              likes: 36936936,
              imageUrl: "profilePicture1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[5]
        ),
    ]
}
