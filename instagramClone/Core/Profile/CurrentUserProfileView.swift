//
//  CurrentUserProfileView.swift
//  instagramClone
//
//  Created by Toh Kar Le on 28/6/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Header
                ProfileHeaderView(user: user)
                
                // Post grid view
                PostGridView(posts: posts)
            }
            .navigationTitle(user.username)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}
