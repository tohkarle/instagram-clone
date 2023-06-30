//
//  PostService.swift
//  instagramClone
//
//  Created by Toh Kar Le on 30/6/23.
//

import Firebase

struct PostService {
    
    private static let postsCollection = Firestore.firestore().collection("posts")
    
    static func fetchFeedPosts() async throws -> [Post] {
        let snapShot = try await postsCollection.getDocuments()
        var posts = try snapShot.documents.compactMap({ try $0.data(as: Post.self) })
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerUid = post.ownerUid
            let postUser = try await UserService.fetchUser(withUid: ownerUid)
            posts[i].user = postUser
        }
        
        return posts
    }
    
    static func fetchUserPosts(uid: String) async throws -> [Post] {
        let snapShot = try await postsCollection.whereField("ownerUid", isEqualTo: uid).getDocuments()
        return try snapShot.documents.compactMap({ try $0.data(as: Post.self) })
    }
}
