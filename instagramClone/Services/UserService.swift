//
//  UserService.swift
//  instagramClone
//
//  Created by Toh Kar Le on 30/6/23.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapShot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapShot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User] {
        let snapShot = try await Firestore.firestore().collection("users").getDocuments()
        return snapShot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
